import 'package:flutter/material.dart';
import 'package:practice_17/apps.dart';
import 'package:practice_17/business.dart';
import 'package:practice_17/home_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
   List body = [
    const HomePages(),
    const BusinessHome(),
    const AppsHomState()
    // Icon(
    //   Icons.home,
    //   size: 50,
    // ),
    // Icon(
    //   Icons.apps,
    //   size: 50,
    // ),
    // Icon(
    //   Icons.business,
    //   size: 50,
    // )
  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   centerTitle: true,
      //   title: RichText(
      //     text: const TextSpan(
      //       text: "Wellcome",
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 25,
      //       ),
      //       children: <TextSpan>[
      //         TextSpan(
      //           text: " to",
      //           style: TextStyle(
      //             color: Colors.orangeAccent,
      //             fontSize: 25,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         TextSpan(
      //           // mouseCursor: SystemMouseCursors.wait,
      //           text: " the",
      //           // semanticsLabel: "America",
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 25,
      //           ),
      //         ),
      //         TextSpan(
      //           text: "Amrecia",
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 25,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      body: Center(
        child: body.elementAt(currentIndex)
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "home",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.apps,
            ),
            label: "apps",
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: "business",
           
          ),
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
          currentIndex = index;     
           },
          );
        },
      ),extendBody: true,
    );
  }
}
