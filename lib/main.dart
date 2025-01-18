import 'package:flutter/material.dart';

import 'ForgotPasswordPage.dart';
import 'LoginPage.dart';
import 'RegistrationPage.dart'; // Import the appropriate screen files

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just Everything Academics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Default page
      routes: {
        '/register': (context) => RegistrationPage(),
        '/forgot_password': (context) => ForgotPasswordPage(),
      },
    );
  }
}
