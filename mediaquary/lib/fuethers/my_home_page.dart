import 'package:flutter/material.dart';
import 'package:mediaquary/fuethers/fractionally_sized_box.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heihth = MediaQuery.of(context).size.height;
    // double sizeOFText= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
          255,
          10,
          60,
          101,
        ),
        centerTitle: true,
        title: const Text(
          "MediaQuery",
                    style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width / 2,
              height: heihth / 2,
              decoration: const BoxDecoration(
                color: Colors.tealAccent,
              ),
            ),
            Container(
              width: width / 2, //in here it means half  of  the screen
              height: heihth * 0.30, //here What I got it 0.50/it means 50 %
              decoration: const BoxDecoration(
                color: Color.fromARGB(
                  255,
                  11,
                  46,
                  74,
                ),
              ),
            ),
          ],
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,

            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  SeconsPages(screenHeight: width, screenweight: heihth,),
                ),
              );
            },
            child: const Text(
              "FractionallySizedBox",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
