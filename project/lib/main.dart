import 'package:flutter/material.dart';
import 'package:project/sliver_app_bar.dart';
import 'header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: StretchableSliverAppBar(),
    );
  }
}

class Hamburger extends StatefulWidget {
  @override
  State<Hamburger> createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            onStretchTrigger: () async{
              
            },
            title: const Text(
              "Deliver",
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Header(),
        ],
      ),
    );
  }
}
