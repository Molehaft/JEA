import 'package:flutter/material.dart';
import 'package:untitled/ForgotPasswordPage.dart';
import 'package:untitled/LoginPage.dart';
import 'package:untitled/RegistrationPage.dart';

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
