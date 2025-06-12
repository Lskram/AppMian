import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.deepOrange,
          padding: const EdgeInsets.all(5),
          child: Text("TLE", style: TextStyle(fontSize: 30, letterSpacing: 3)),
        ),
        Container(
          color: Colors.deepOrange,
          padding: const EdgeInsets.all(5),
          child: Text("TLE", style: TextStyle(fontSize: 30, letterSpacing: 3)),
        ),
        Container(
          color: Colors.deepOrange,
          padding: const EdgeInsets.all(5),
          child: Text("TLE", style: TextStyle(fontSize: 30, letterSpacing: 3)),
        ),
      ],
    );
  }
}
