import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {

  final supabase = Supabase.instance.client;

  int total = 0;
  int planned = 0;
  int done = 0;

  @override
  void initState() {
    super.initState();
    loadStats();
  }

  Future<void> loadStats() async {

    final data = await supabase
        .from('itineraries')
        .select();

    setState(() {

      total = data.length;

      planned =
          data.where((e) => e['status'] == "Planned").length;

      done =
          data.where((e) => e['status'] == "Done").length;
    });
  }

  Widget statCard(String title, int value, Color color) {

    return Container(

      width: 250,

      margin: const EdgeInsets.symmetric(vertical: 10),

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [

          Text(
            value.toString(),
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            title,
            style: TextStyle(color: color),
          )

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Center(

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          statCard("Total Trips", total, Colors.blue),

          statCard("Planned Trips", planned, Colors.orange),

          statCard("Completed Trips", done, Colors.green),

        ],
      ),
    );
  }
}