import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "My app", 
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: const Home(),
      )
    )
  );
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      padding: const EdgeInsets.all(7),
      child:  Text(
        "TLE TA WAN",
        style: TextStyle(
          fontSize: 30,
          letterSpacing: 3,
        ),
      ),
    );
  }
}