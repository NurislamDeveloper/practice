import 'package:flutter/material.dart';
import 'package:practice_23/List/list_title.dart';

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
        centerTitle: true,
        title: const Text(
          "Flow Widget",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 28,
          ),
        ),
      ),
      
      body:ListTitle()
    );
  }
}

class ListTitle extends StatelessWidget {
  const ListTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(title: Text("LisTitle")),
   body: Column(
    children: [
    Text(List.)
    ],
   ),
    );
  }
}
