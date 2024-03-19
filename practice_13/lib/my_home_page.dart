import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay selected = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 40, 56),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 247, 247),
        centerTitle: true,
        title: const Text(
          "Flutter ",
          style: TextStyle(
            color: Color.fromARGB(255, 11, 37, 58),
            fontSize: 48,
            fontWeight: FontWeight.w400,
            fontFamily: "GrechenFuemen-Regular"
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${selected.hour} : ${selected.minute}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.white,
                ),
              ),
              child: const Text(
                "Choose Time",
                style: TextStyle(
                  color: Color.fromARGB(255, 13, 42, 65),
                  fontSize: 23,
                ),
              ),
              onPressed: () async {
                final TimeOfDay? timeOfDay= await showTimePicker(
                    context: context,
                    barrierColor: Colors.amber,
                    initialTime: selected,
                    initialEntryMode: TimePickerEntryMode.dial,
                    );
                if (timeOfDay != null) {
                  setState(() {
                  selected = timeOfDay;
                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
