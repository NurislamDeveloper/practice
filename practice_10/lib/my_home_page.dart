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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor:const  Color.fromARGB(255, 18, 44, 66),
        leading:const  CircleAvatar(
          backgroundColor: Colors.orangeAccent,
          radius: 55,

          backgroundImage: AssetImage(
            'assets/image/boy_with _laptop.jpg',
            ),
        ),
        centerTitle: true,
        title: const Text(
          'Flutter CircleAvator',
          style: TextStyle(
            color: Color.fromARGB(255, 237, 237, 237),
          ),
        ),
      ),
    );
  }
}
