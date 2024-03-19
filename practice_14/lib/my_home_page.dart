import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool first = true;
  double fontSizes = 60;
  Color colors = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 36, 57),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 91, 90, 90),
        centerTitle: true,
        title: const Text(
          "Flutter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w400,
          ),
        ),
        toolbarHeight: 70,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 250),
                style: TextStyle(
                    fontSize: fontSizes,
                    color: colors,
                    fontWeight: FontWeight.bold,
                    ),
                child: const Text(
                  "Flutter",
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  fontSizes = first ? 90 : 60;
                  colors = first ? Colors.blue : Colors.red;
                  first = !first;
                });
              },
              child: const Text(
                "Switch",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
