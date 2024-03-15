import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 52, 78),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          "Flutter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: Center(
        child:GestureDetector(
          onTap: () {
            setState(() {
              selected = ! selected;
            });
          },
          child:AnimatedContainer(
            width: selected ? 200.0:100.0,
            height: selected ? 100.0:200.0,
           color: selected ? Colors.blueGrey:Colors.white,
           alignment:
            selected ? Alignment.center: AlignmentDirectional.bottomCenter,
            curve: Curves.fastOutSlowIn,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(size: 70,),
          ),
        ),
      ),
    );
  }
}
