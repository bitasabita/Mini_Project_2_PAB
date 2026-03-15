import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/itinerary_model.dart';

class FormPage extends StatefulWidget {
  final Itinerary? itinerary;

  const FormPage({super.key, this.itinerary});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final supabase = Supabase.instance.client;

  final hariController = TextEditingController();
  final tanggalController = TextEditingController();
  final waktuController = TextEditingController();
  final aktivitasController = TextEditingController();

  String status = "Planned";

  final Color tosca = const Color(0xFF2EC4B6);
  final Color orangeSoft = const Color(0xFFFFBF69);

  @override
  void initState() {
    super.initState();

    if (widget.itinerary != null) {
      hariController.text = widget.itinerary!.hari;
      tanggalController.text = widget.itinerary!.tanggal;
      waktuController.text = widget.itinerary!.waktu;
      aktivitasController.text = widget.itinerary!.aktivitas;
      status = widget.itinerary!.status;
    }
  }

  Future<void> saveData() async {

    if (widget.itinerary == null) {

      await supabase.from('itineraries').insert({
        'hari': hariController.text,
        'tanggal': tanggalController.text,
        'waktu': waktuController.text,
        'aktivitas': aktivitasController.text,
        'status': status,
      });

      if (!mounted) return;
      Navigator.pop(context, "added");

    } else {

      await supabase
          .from('itineraries')
          .update({
        'hari': hariController.text,
        'tanggal': tanggalController.text,
        'waktu': waktuController.text,
        'aktivitas': aktivitasController.text,
        'status': status,
      })
          .eq('id', widget.itinerary!.id);

      if (!mounted) return;
      Navigator.pop(context, "edited");

    }
  }

  InputDecoration inputDecoration(BuildContext context, String label, IconData icon) {

    final isDark = Theme.of(context).brightness == Brightness.dark;

    return InputDecoration(

      labelText: label,

      prefixIcon: Icon(icon),

      labelStyle: TextStyle(
        color: isDark ? Colors.white70 : Colors.black87,
      ),

      filled: true,

      fillColor: isDark
          ? const Color(0xFF1E2A3A)
          : Colors.grey.shade100,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: isDark ? Colors.tealAccent : Colors.teal,
          width: 2,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: tosca,
        elevation: 0,
        title: const Text(
          "Tambah Itinerary ✨",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            /// HARI

            TextField(
              controller: hariController,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              decoration: inputDecoration(
                context,
                "Hari ke-",
                Icons.calendar_today,
              ),
            ),

            const SizedBox(height: 15),

            /// TANGGAL

            TextField(
              controller: tanggalController,
              readOnly: true,

              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),

              onTap: () async {

                DateTime? picked = await showDatePicker(

                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),

                );

                if (picked != null) {

                  tanggalController.text =
                      "${picked.day}/${picked.month}/${picked.year}";

                }

              },

              decoration: inputDecoration(
                context,
                "Tanggal",
                Icons.date_range,
              ),
            ),

            const SizedBox(height: 15),

            /// WAKTU

            TextField(
              controller: waktuController,
              readOnly: true,

              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),

              onTap: () async {

                TimeOfDay? picked = await showTimePicker(

                  context: context,
                  initialTime: TimeOfDay.now(),

                );

                if (picked != null) {

                  waktuController.text =
                      "${picked.hour}:${picked.minute.toString().padLeft(2, '0')}";

                }

              },

              decoration: inputDecoration(
                context,
                "Waktu",
                Icons.access_time,
              ),
            ),

            const SizedBox(height: 15),

            /// AKTIVITAS

            TextField(
              controller: aktivitasController,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              decoration: inputDecoration(
                context,
                "Aktivitas",
                Icons.location_on,
              ),
            ),

            const SizedBox(height: 15),

            /// STATUS

            DropdownButtonFormField<String>(

              value: status,

              dropdownColor: Theme.of(context).cardColor,

              style: TextStyle(
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),

              items: ["Planned", "Done"]
                  .map(
                    (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ),
              )
                  .toList(),

              onChanged: (value) {

                setState(() {
                  status = value!;
                });

              },

              decoration: inputDecoration(
                context,
                "Status",
                Icons.flag,
              ),
            ),

            const SizedBox(height: 30),

            /// BUTTON SIMPAN

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: orangeSoft,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),

                onPressed: saveData,

                child: const Text(
                  "Simpan ✨",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}