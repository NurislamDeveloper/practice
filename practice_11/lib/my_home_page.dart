import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selected = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 34, 51),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "${selected.year} - ${selected.month} - ${selected.day}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey) ,
                child: const Text(
                  "Choose Date",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: selected,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000),
                  );
                  if(dateTime != null){
                    setState(() {
                      selected = dateTime;
                    });
                  }
                },
              ),
            ],
          ),
      ),
    );
  }
}
