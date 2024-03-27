import 'package:flutter/material.dart';

class AppsHomState extends StatefulWidget {
  const AppsHomState({super.key});

  @override
  State<AppsHomState> createState() => AppsHomStateState();
}

class AppsHomStateState extends State<AppsHomState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HomePage",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}