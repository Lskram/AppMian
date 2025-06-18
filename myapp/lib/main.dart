import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'package:myapp/screens/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("หน้าแรกของแอปพลิเคชั่น"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}
