import 'package:flutter/material.dart';
import 'package:ignorebuttom/presentetion/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
