import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'screens/login.dart';
import 'screens/register.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: const Home(),
    );
  }
}