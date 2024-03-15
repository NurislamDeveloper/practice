import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            floating: true,
            centerTitle: true,
            title: Text(
              "Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            expandedHeight: 10.0,
            backgroundColor: Colors.blue,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text(
                  "SLIVER",
                  style: TextStyle(
                    fontSize: 600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
