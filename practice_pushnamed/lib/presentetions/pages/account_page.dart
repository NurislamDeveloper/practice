import 'package:flutter/material.dart';
import 'package:practice_pushnamed/data/constnas/style.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleOfAll.colotOfScaffold,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Account Page",
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
                onPressed: () {Navigator.pushNamed(context, '/my_home_page');},
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
