import 'dart:math';

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
        title:const Text(
          "ScrollBar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body:Scrollbar(
        trackVisibility: true,
              child:ListView.builder(
                itemCount: 200,
                // controller: ScrollController(initialScrollOffset: 35),
                itemBuilder: (context, index) {
                 return ListTile(
                  title: Container(
                  width: double.infinity,
                  height: 30,
                  color: Colors.amber,
                  child: Row(
                    children: [
                    const Icon(Icons.account_balance_wallet_outlined),
                      Text("ScrollBar $index"),
                     ],
                    ),
                   ),
                  );
                 },
                )
               ),
          
        );
  }
}
