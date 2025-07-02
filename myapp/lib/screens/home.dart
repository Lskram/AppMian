import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ส่วนหัวของแอป
      // AppBar เป็น widget ที่ใช้แสดงส่วนหัวของแอป
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.green.shade400,
        centerTitle: true,
        elevation: 0,
      ),
      //ส่วนของ body ของแอป
      // ในที่นี้เราจะใช้ Container ว่างๆ
      body: Center(
        child: Text(
          "Hello Flutter!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
