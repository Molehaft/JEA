import 'package:flutter/material.dart';
import 'RegistrationPage.dart';
import 'ForgotPasswordPage.dart';
import 'HomePage.dart';  // Ensure HomePage is imported here

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Verify user credentials and navigate to HomePage
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcome to JEA'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'Email Address',
                          hintText: 'Enter Email Address',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          return value == null || value.isEmpty
                              ? 'Please enter email address'
                              : null;
                        },
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          return value == null || value.isEmpty
                              ? 'Please enter password'
                              : null;
                        },
                      ),
                      const SizedBox(height: 25),
                      MaterialButton(
                        minWidth: double.infinity,
                        onPressed: _login,
                        child: const Text('Login'),
                        color: Colors.teal,
                        textColor: Colors.white,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Navigate to RegistrationPage
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RegistrationPage()),
                              );
                            },
                            child: const Text(
                              'New user? Register Here!',
                              style: TextStyle(
                                color: Colors.teal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigate to ForgotPasswordPage
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                              );
                            },
                            child: const Text(
                              'Forgot Password!',
                              style: TextStyle(
                                color: Colors.teal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
