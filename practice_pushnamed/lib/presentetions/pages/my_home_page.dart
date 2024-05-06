import 'package:flutter/material.dart';
import 'package:practice_pushnamed/data/constnas/style.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleOfAll.colotOfScaffold,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Home Page",
          style: StyleOfAll.appStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent,),),
                onPressed: () {Navigator.pushNamed(context, '/contact_page');},
                child: const Text(
                  " G o ",
                  style: StyleOfAll.appStyle,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
