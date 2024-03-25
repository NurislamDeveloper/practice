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
      appBar: AppBar(
        title: const Text(
          "Bottom Sheet",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          // style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent,),),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          ), //it's another method to change color of elevetedButton style
          child: const Text(
            "Modal Bottom sheet",
          ),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.orange,
                barrierColor: Colors.blueAccent,
                // in here I change color of showModalBottomsheet
                //with barrierColor when I click the bottom scaffold disapier and all the sreenn look white
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 150,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text(
                          "Close",
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                },
             );
          },
        ),
      ),
    );
  }
}
