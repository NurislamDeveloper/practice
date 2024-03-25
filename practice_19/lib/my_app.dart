import 'package:flutter/material.dart';

import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 209, 185, 32),
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: Color.fromARGB(255, 242, 242, 242),
                fontSize: 28,
              ),
             ),
            scaffoldBackgroundColor: const Color.fromARGB(255, 16, 50, 78),
            ),
      home: const MyHomePage(),
    );
  }
}
