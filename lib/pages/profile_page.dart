import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    final supabase = Supabase.instance.client;

    final user = supabase.auth.currentUser;

    return Padding(
      padding: const EdgeInsets.all(20),

      child: Column(

        children: [

          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),

          const SizedBox(height: 20),

          Text(
            user?.email ?? "User",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          ElevatedButton.icon(
            icon: const Icon(Icons.logout),
            label: const Text("Logout"),

            onPressed: () async {

              await supabase.auth.signOut();

              Navigator.pop(context);
            },
          )

        ],
      ),
    );
  }
}