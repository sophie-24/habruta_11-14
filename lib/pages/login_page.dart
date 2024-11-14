//로그인 화면이며 로그인 성공 시 홈 화면으로 이동하는 페이지

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 로그인 성공 시 HomePage로 이동
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
