import 'package:flutter/material.dart';
import 'package:ignorebuttom/data/constans/style.dart';
import 'package:ignorebuttom/presentetion/man.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool ignore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.styleOFScaffold,
      appBar: AppBar(
        title: const Text(
          "ignorePointer",
          style: Style.style,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ignore = !ignore;
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: ignore ? Colors.red : Colors.green),
              child: Text(
                ignore ? "blocked" : "all good",
              ),
            ),
            const SizedBox(height: 20,),
            IgnorePointer(
              ignoring: ignore,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Man(),
                    ),
                  );
                },
                child: const Text("click me "),
              ),
            )
          ],
        ),
      ),
    );
  }
}
