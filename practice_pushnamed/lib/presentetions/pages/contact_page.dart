import 'package:flutter/material.dart';
import 'package:practice_pushnamed/data/constnas/style.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleOfAll.colotOfScaffold,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Contact Page",
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
                onPressed: () {Navigator.pushNamed(context, '/account_page',);},
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
