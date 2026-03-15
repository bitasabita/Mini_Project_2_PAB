import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../theme/theme_provider.dart';
import '../models/itinerary_model.dart';

import 'form_page.dart';
import 'stats_page.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final supabase = Supabase.instance.client;

  List itineraryList = [];

  bool isLoading = true;

  String selectedFilter = "All";

  int currentIndex = 0;

  final Color tosca = const Color(0xFF2EC4B6);
  final Color darkBlue = const Color(0xFF3A4F7A);

  @override
  void initState() {
    super.initState();
    fetchItineraries();
  }

  Future<void> fetchItineraries() async {

    setState(() {
      isLoading = true;
    });

    final data = await supabase
        .from('itineraries')
        .select()
        .order('created_at', ascending: true);

    setState(() {
      itineraryList = data;
      isLoading = false;
    });
  }

  List getFilteredList() {

    if (selectedFilter == "Planned") {
      return itineraryList.where((e) => e['status'] == "Planned").toList();
    }

    if (selectedFilter == "Done") {
      return itineraryList.where((e) => e['status'] == "Done").toList();
    }

    return itineraryList;
  }

  int get totalTrips => itineraryList.length;

  int get doneTrips =>
      itineraryList.where((e) => e['status'] == "Done").length;

  double get progress {

    if (totalTrips == 0) return 0;

    return doneTrips / totalTrips;
  }

  @override
  Widget build(BuildContext context) {

    final filteredList = getFilteredList();

    Widget tripPage = SingleChildScrollView(

      child: Column(
        children: [

          /// HEADER

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [darkBlue, tosca],
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [

                    const Text(
                      "Travel Planner ✈️",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    Consumer<ThemeProvider>(
                      builder: (context, themeProvider, child) {

                        return IconButton(

                          icon: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),

                            child: Icon(
                              themeProvider.isDarkMode
                                  ? Icons.wb_sunny
                                  : Icons.nightlight_round,
                              key: ValueKey(themeProvider.isDarkMode),
                              color: Colors.white,
                            ),
                          ),

                          onPressed: () {
                            themeProvider.toggleTheme();
                          },
                        );
                      },
                    )
                  ],
                ),

                const SizedBox(height: 10),

                const Text(
                  "Organize your journey beautifully 🌍",
                  style: TextStyle(color: Colors.white70),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Trip Progress",
                  style: TextStyle(color: Colors.white),
                ),

                const SizedBox(height: 6),

                LinearProgressIndicator(
                  value: progress,
                  minHeight: 10,
                  backgroundColor: Colors.white24,
                  valueColor:
                      const AlwaysStoppedAnimation(Colors.white),
                ),

                const SizedBox(height: 6),

                Text(
                  "$doneTrips of $totalTrips completed",
                  style: const TextStyle(color: Colors.white70),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),

          const SizedBox(height: 15),

          /// FILTER

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),

            child: Row(
              children: ["All", "Planned", "Done"].map((filter) {

                final isSelected = selectedFilter == filter;

                return Padding(
                  padding: const EdgeInsets.only(right: 10),

                  child: ChoiceChip(
                    label: Text(filter),
                    selected: isSelected,

                    onSelected: (_) {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 10),

          const SizedBox(height: 10),

/// STATUS LEGEND
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

    Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: const BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 6),
        const Text(
          "Done",
          style: TextStyle(fontSize: 13),
        ),
      ],
    ),

    const SizedBox(width: 20),

    Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: const BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 6),
        const Text(
          "Planned",
          style: TextStyle(fontSize: 13),
        ),
      ],
    ),
  ],
),

          if (isLoading)
            const Padding(
              padding: EdgeInsets.all(40),
              child: CircularProgressIndicator(),
            ),



          if (!isLoading)

          ReorderableListView.builder(

            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),

            padding: const EdgeInsets.all(16),

            itemCount: filteredList.length,

            onReorder: (oldIndex, newIndex) {

              setState(() {

                if (newIndex > oldIndex) newIndex--;

                final item = itineraryList.removeAt(oldIndex);

                itineraryList.insert(newIndex, item);
              });
            },

            itemBuilder: (context, index) {

              final item = filteredList[index];

              return Container(

                key: ValueKey(item['id']),

                margin: const EdgeInsets.only(bottom: 16),

                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                    )
                  ],
                ),

                child: Row(
                  children: [

                    Container(
                      width: 8,
                      height: 70,
                      decoration: BoxDecoration(
                        color: item['status'] == "Done"
                            ? Colors.green
                            : Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Day ${item['hari']?.toString() ?? "-"} • ${item['tanggal']?.toString() ?? "-"}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text("🕒 ${item['waktu']?.toString() ?? "-"}"),

                          const SizedBox(height: 4),

                          Text("📍 ${item['aktivitas']?.toString() ?? "-"}"),

                        ],
                      ),
                    ),

                    /// EDIT

                    IconButton(
  icon: const Icon(Icons.edit, color: Colors.blue),
  onPressed: () async {

    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => FormPage(
          itinerary: Itinerary(
            id: item['id'],
            hari: item['hari']?.toString() ?? "1",
            tanggal: item['tanggal']?.toString() ?? "",
            waktu: item['waktu']?.toString() ?? "",
            aktivitas: item['aktivitas']?.toString() ?? "",
            status: item['status']?.toString() ?? "Planned",
          ),
        ),
      ),
    );

    fetchItineraries();

    if (result == "edited") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Itinerary berhasil diupdate ✨"),
        ),
      );
    }
  },
),

                    /// DELETE

                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),

                      onPressed: () async {

                        await supabase
                            .from('itineraries')
                            .delete()
                            .eq('id', item['id']);

                        fetchItineraries();

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Itinerary berhasil dihapus"),
                          ),
                        );
                      },
                    ),

                    const Icon(Icons.drag_handle),

                  ],
                ),
              );
            },
          ),
        ],
      ),
    );

    List pages = [
      tripPage,
      const StatsPage(),
      const ProfilePage(),
    ];

    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () async {

          final result = await Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => const FormPage(),
  ),
);

if (result == "added") {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text("Itinerary berhasil ditambahkan")),
  );
}

if (result == "edited") {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text("Itinerary berhasil diupdate")),
  );
}

          fetchItineraries();
        },
        child: const Icon(Icons.add),
      ),

      body: SafeArea(
        child: pages[currentIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Trips",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Stats",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

        ],
      ),
    );
  }
}