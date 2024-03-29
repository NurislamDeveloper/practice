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
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InteractiveViewer(  
            scaleEnabled: true, // scaleEnabled: true, if I write in here true it's allows me to bring the picture closer
            constrained: true,//  here I didn't learn everthing with this widget if you wanna use you !
            boundaryMargin:  EdgeInsets.all(60),
            child: 
        Image.asset("assets/image/pingvin.jpg"),
          ),
        ],
      ),
    );
  }
}
