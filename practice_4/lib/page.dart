import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool booll = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 53, 77),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Flutter",
          style: TextStyle(
            color: Color.fromARGB(
              255,
              20,
              51,
              76,
            ),
            fontSize: 28,
          ),
        ),
      ),
      body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  booll = !booll;
                });
              },
              child: const Text(
                "Switch",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                ),
              ),
              ),
              AnimatedCrossFade(
                firstChild: Image.asset(
                  "assets/image/sea.jpeg",
                  width: double.infinity,
                  ),
               secondChild:Image.asset(
                "assets/image/beach.jpg",
                width: double.infinity,
                ),
                 crossFadeState: booll ? CrossFadeState.showFirst:CrossFadeState.showSecond,
                  duration: const Duration(seconds: 2),
             ), 
        ],
      ),
      ),
    );
  }
}
