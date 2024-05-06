import 'package:flutter/material.dart';
import 'package:ignorebuttom/data/constans/style.dart';

class Man extends StatelessWidget {
  const Man({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Man",
          style: Style.style,
        ),
      ),
    );
  }
}
