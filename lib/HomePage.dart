import 'package:flutter/material.dart';
import 'SubjectPage.dart'; // Import your SubjectPage
import 'GamesPage.dart'; // Import your GamesPage
import 'LoginPage.dart'; // Import your LoginPage

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Library',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Number of tabs in each row
                crossAxisSpacing: 16, // Space between columns
                mainAxisSpacing: 16, // Space between rows
                children: [
                  _buildTab(context, 'Mathematics'),
                  _buildTab(context, 'Science'),
                  _buildTab(context, 'English'),
                  _buildTab(context, 'Afrikaans'),
                  _buildTab(context, 'Games'),
                  _buildTab(context, 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(BuildContext context, String name) {
    return ElevatedButton(
      onPressed: () {
        if (name == 'Logout') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        } else if (name == 'Games') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const GamesPage()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubjectPage(subjectName: name),
            ),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal, // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
