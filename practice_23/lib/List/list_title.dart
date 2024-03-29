import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Example  {
   Example({
     required this.color, required this.nameOfTitle, required this.colorOfTitle, required this.sizeOfTitle, required this.nameOfIcon, required this.nameOfSubtitle, required this.nameOfTrailing,
  });
  final Color color;
  final String nameOfTitle;
  final Color colorOfTitle;
  final double sizeOfTitle;
  final Icon nameOfIcon;
  final String nameOfSubtitle;
  final Icon nameOfTrailing ;
 // ignore: prefer_typing_uninitialized_variables
  

}

Example a = Example(color: Colors.red, nameOfTitle: , colorOfTitle: colorOfTitle, sizeOfTitle: sizeOfTitle, nameOfIcon: nameOfIcon, nameOfSubtitle: nameOfSubtitle, nameOfTrailing: nameOfTrailing)