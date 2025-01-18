import 'package:flutter/material.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Games'),
      ),
      body: const Center(
        child: Text(
          'Under Development, Coming Soon!',
          style: TextStyle(fontSize: 20, color: Colors.teal),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
