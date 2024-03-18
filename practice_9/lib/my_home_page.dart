import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? isCheked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 41, 59),
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
        child: CheckboxListTile(
          title: const Text("Check list title ",style: TextStyle(color: Colors.white),),
          value: isCheked,
          onChanged: (bool? newValue) {
            setState(() {
              isCheked = newValue;
            });
          },
          activeColor: Colors.orangeAccent, 
          checkColor: Colors.white,
          tileColor:const Color.fromARGB(31, 0, 0, 0),
          subtitle: const Text(
            "this is a subtitle",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: false,
        ),
      ),
    );
  }
}
