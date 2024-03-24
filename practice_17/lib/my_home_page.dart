import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            text: "Wellcome",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            children: <TextSpan>[
              TextSpan(
                text: " to",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                // mouseCursor: SystemMouseCursors.wait,
                text: " the",
                // semanticsLabel: "America",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              TextSpan(
                text: "Amrecia",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
