import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 26, 62, 92),
      child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: Container(
              height: 250,
              width: double.infinity,
              color: Colors.blueGrey,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(
                  seconds: 2,
                ),
                curve: Curves.fastOutSlowIn,
                child:const  FlutterLogo(size: 50),
              ),
            ),
          )),
    );
  }
}
