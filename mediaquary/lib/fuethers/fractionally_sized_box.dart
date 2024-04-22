
import 'package:flutter/material.dart';

class SeconsPages extends StatelessWidget {
  const SeconsPages({super.key, required this.screenHeight, required this.screenweight});
  final double screenHeight;
  
  final double screenweight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
          255,
          10,
          60,
          101,
        ),
        centerTitle: true,
        title: const Text(
          "FractionallySizedBoxPages",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // body: Flexible(
      //   child: FractionallySizedBox(
      //     widthFactor: 0.5,
      //     heightFactor: 0.5,
      //     alignment: Alignment.center,
      //     child: Container(
      //       width:  screenweight ,
      //       height: screenHeight ,
      //       decoration: BoxDecoration(
      //         color: Colors.orangeAccent,
      //         borderRadius: BorderRadius.circular(
      //           50,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
