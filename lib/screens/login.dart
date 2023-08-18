import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                autofocus: true,
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  icon: Icon(Icons.person),
                ),
                validator: (value) {
                  return value!.trim().isNotEmpty ? null : "用户名不能为空";
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  icon: Icon(Icons.lock),
                ),
                validator: (value) {
                  return value!.trim().length > 5 ? null : "密码不能少于6位";
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // 登录按钮的点击事件
                  String email = emailController.text;
                  String password = passwordController.text;

                  if ((_formKey.currentState as FormState).validate()) {
                    //验证通过提交数据
                    login(email, password);
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        )
      ),
    );
  }

  // 模拟登录逻辑
  void login(String email, String password) {
    // 这里可以调用您的登录接口或进行其他登录处理
    print('Email: $email, Password: $password');
  }
}
