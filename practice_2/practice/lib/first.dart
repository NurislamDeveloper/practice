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
      backgroundColor: const Color.fromARGB(255, 21, 49, 72),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title:  const Text(
          "practice_1",
          style: TextStyle(
            color: Color.fromARGB(255, 21, 49, 72),
            fontSize: 28,
            fontWeight: FontWeight.w400,
          fontFamily: "Pacifico-Regular",
          ),
        ),
      ),
    body:  Center(
      child: ElevatedButton(
        child:const Text("show Alert Dialog",style: TextStyle(color: Color.fromARGB(255, 21, 49, 72, )),) ,
        onPressed: () {
          showDialog(context: context,
           builder:(context) => AlertDialog
           (actions: [
            TextButton(onPressed: ()
            {Navigator.of(context).pop();
          },
          child:const Text("close"),
              ),
             ],
             title:const  Text("Flutter Mapp"),
            contentPadding:const  EdgeInsets.all(20),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            content: const Text("this is the Alert Dialog"),
             ),
            );
          },
        ),
      ),
     );

  }
}
