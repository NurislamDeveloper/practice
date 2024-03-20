import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double targetValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 42, 67),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 93, 93),
        centerTitle: true,
        title:const  Text(
          "Tween",
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.w400,
            fontFamily: "GrechenFuemen-Regular",
          ),
        ),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween <double>(begin: 0,end: targetValue),
           duration: const Duration(milliseconds: 500),
            builder: (BuildContext context, double size, Widget ? child){
              return IconButton(
                iconSize: size,
                color: Colors.orangeAccent,
                icon: const Icon(Icons.flutter_dash),
                onPressed: (){
                  setState(() {
                    targetValue = targetValue == 100? 250 :100;

                  });
                },
             );
            }
      ),
      )
    );
  }
}
