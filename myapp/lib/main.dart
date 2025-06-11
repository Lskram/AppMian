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
    return Text("พึ่งสร้างสเตจเลสวิเจ็ตขึ้นมา แล้วส่งไปที่บอดี้ ใช้ชื่อว่า Home");
  }
}