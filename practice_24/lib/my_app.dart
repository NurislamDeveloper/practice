import 'package:flutter/material.dart';

import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 9, 23, 46),
          appBarTheme:const  AppBarTheme(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            centerTitle: true,
           ),
          ),
      home: const MyHomePage(),
    );
  }
}