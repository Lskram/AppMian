
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.deepOrange,
        padding: const EdgeInsets.all(5),
        child:  Text(
          "TLE TA WAN",
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 3,
          ),
        ),
      ),
    );
  }
}