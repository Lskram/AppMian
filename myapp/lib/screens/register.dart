import 'package:flutter/material.dart';
import '../db/database_helper.dart';
import '../models/user.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('สมัครสมาชิก')),
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
                child: Text('สมัครสมาชิก'),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await DatabaseHelper().insertUser(
                      User(username: username, password: password),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('สมัครสมาชิกสำเร็จ!')),
                    );
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}