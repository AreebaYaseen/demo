import 'package:demo_project/utils/routes/routes_name.dart';
import 'package:demo_project/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('LoginScreen'),
      ),
      body: const Column(
        children: [Text('hello')],
      ),
    );
  }
}
