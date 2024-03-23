import 'package:flutter/gestures.dart';
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
      backgroundColor: const Color.fromARGB(255, 16, 48, 74),
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body:const  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                  text: "Flutter",
                  style:  TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                  ),
                  children: [
                    TextSpan(
                        text: " to the moon",
                        style:  TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.normal,
                        ),
                       ),
                     ],
                  ),
             ),
          ],
        ),
      ),
    );
  }
}
