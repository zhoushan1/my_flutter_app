import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart'; // ios风格
import 'package:my_app/screens/home.dart';
import 'package:my_app/widget/my_app_bar.dart';
import 'package:my_app/screens/login.dart';



class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: MaterialApp(
          routes: {
          '/': (context) =>  const HomePage(),
            '/login': (context) => const LoginPage(),
        }
      ),
      // floatingActionButton: const FloatingActionButton(
      //   tooltip: 'Add', // used by assistive technologies
      //   onPressed: null,
      //   child: Icon(Icons.add),
      // ),
    );
  }
}



void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: SafeArea(
      child: MyScaffold(),
    ),
  ));
}