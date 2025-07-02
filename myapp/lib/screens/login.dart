import 'package:flutter/material.dart';
import '../db/database_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('เข้าสู่ระบบ')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                onChanged: (val) => username = val,
                validator: (val) => val!.isEmpty ? 'กรุณากรอก username' : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (val) => password = val,
                validator: (val) => val!.isEmpty ? 'กรุณากรอก password' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('เข้าสู่ระบบ'),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final user = await DatabaseHelper().getUser(username, password);
                    if (user != null) {
                      // เข้าสู่ระบบสำเร็จ
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Username หรือ Password ไม่ถูกต้อง')),
                      );
                    }
                  }
                },
              ),
              TextButton(
                child: Text('สมัครสมาชิก'),
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}