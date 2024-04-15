import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: InteractiveViewer( ///it has a lot of properties I dign't use in here you can check if you want 
          boundaryMargin: const EdgeInsets.all(
            double.infinity,
          ),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              centerTitle: true,
              title:const  Text(
                "Flutter",
                style: TextStyle(color: Colors.white,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
