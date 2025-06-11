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
        body: const Text("Hello Appp "),
      )
    )
  );
}