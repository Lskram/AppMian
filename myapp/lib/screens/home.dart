
import 'package:flutter/material.dart';

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