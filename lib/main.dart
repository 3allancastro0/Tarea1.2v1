import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RemindersScreen(),
    );
  }
}

class RemindersScreen extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {
      "title": "Quick Creation",
      "description":
      "Simply type in your list, ask Siri, or add a reminder from your Calendar app.",
      "icon": Icons.access_time_rounded,
      "color": Colors.green
    },
    {
      "title": "Grocery Shopping",
      "description":
      "Create a Grocery List that automatically sorts items you add by category.",
      "icon": Icons.shopping_cart,
      "color": Colors.orange
    },
    {
      "title": "Easy Sharing",
      "description":
      "Collaborate on a list, and even assign individual tasks.",
      "icon": Icons.people,
      "color": Colors.yellow
    },
    {
      "title": "Powerful Organization",
      "description":
      "Create new lists to match your needs, categorize reminders with tags, and manage reminders around around your work flow with Smart Lists",
      "icon": Icons.folder,
      "color": Colors.blue
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Center(
              child: Text(
                "Welcome to Reminders",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: features.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(features[index]['icon'],
                        color: features[index]['color'], size: 30),
                    title: Text(features[index]['title'],
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(features[index]['description']),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                child: const Text("Continue",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
