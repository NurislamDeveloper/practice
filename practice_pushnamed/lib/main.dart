import 'package:flutter/material.dart';
import 'package:practice_pushnamed/presentetions/pages/account_page.dart';
import 'package:practice_pushnamed/presentetions/pages/contact_page.dart';
import 'package:practice_pushnamed/presentetions/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home:const  MyHomePage(),
      routes: {
        '/my_home_page':(context) => const MyHomePage(),
        '/contact_page':(context) => const Contact(),
        '/account_page':(context) => const Account(),

      },
      // '/intro_pages': (context) =>const  IntroPage(),
      //   '/shop_pages': (context) => const ShopPages(),
      //   '/card_page': (context) => const CardPages(),

    );
  }
}

