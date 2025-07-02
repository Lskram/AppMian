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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // วงกลมเลข 1
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.green.shade400,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // ข้อมูล Task 1
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("At Work",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold,
                                color: Colors.black87
                            ),
                        ),
                        SizedBox(height: 4),
                        Text("Stand up and stretch for 2 minutes",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black54
                            ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "8:30-16:30",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // สวิตช์
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.green,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Task Card 2
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // วงกลมเลข 2
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.green.shade400,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        "2",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // ข้อมูล Task 2
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Freelance",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold,
                                color: Colors.black87
                            ),
                        ),
                        SizedBox(height: 4),
                        Text("Check your email",
                            style: TextStyle(
                                fontSize: 14, color: Colors.black54
                            ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "-",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // สวิตช์
                  Switch(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Colors.green,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // ปุ่มด้านล่าง
            SizedBox(
              width: 140,
              child: ElevatedButton(
                onPressed: () {
                  // ตัวอย่าง: แสดง snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('คุณกดปุ่มกิจกรรม!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade400,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "กิจกรรม",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
