import 'package:flutter/material.dart';

import 'my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              theme: ThemeData(
    appBarTheme: const AppBarTheme(
      toolbarHeight: 80 // Adjust the toolbarheight as needed
    ),
  ),
      debugShowCheckedModeBanner: false,
        
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}
