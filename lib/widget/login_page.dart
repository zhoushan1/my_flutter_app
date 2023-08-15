import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // 登录按钮的点击事件
                String email = emailController.text;
                String password = passwordController.text;

                //执行登录逻辑
                login(email, password);
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  // 模拟登录逻辑
  void login(String email, String password) {
    // 这里可以调用您的登录接口或进行其他登录处理
    print('Email: $email, Password: $password');
  }
}
