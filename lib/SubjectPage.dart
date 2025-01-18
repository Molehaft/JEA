import 'package:flutter/material.dart';
import 'MathematicsGrade12.dart'; // Import the MathematicsGrade12 page

class SubjectPage extends StatelessWidget {
  final String subjectName;

  const SubjectPage({Key? key, required this.subjectName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(subjectName),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Grade 12'),
              Tab(text: 'Grade 11'),
              Tab(text: 'Grade 10'),
              Tab(text: 'Grade 09'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            if (subjectName == 'Mathematics') const MathematicsGrade12()
            else Center(child: Text('Content for Grade 12 in $subjectName')),
            Center(child: Text('Content for Grade 11 in $subjectName')),
            Center(child: Text('Content for Grade 10 in $subjectName')),
            Center(child: Text('Content for Grade 09 in $subjectName')),
          ],
        ),
      ),
    );
  }
}
