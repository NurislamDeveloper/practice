import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text(
          "Flutter",
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      
    );
  }
}
