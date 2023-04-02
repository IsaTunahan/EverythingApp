import 'package:everything_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  // text editing controllers
  final usernameController = TextEditingController();
  final passwordConttoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text('Merhaba'),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                controller: passwordConttoller,
                hintText: 'Password',
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
