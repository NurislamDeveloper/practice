import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            text: "Hi",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            children: <TextSpan>[
              TextSpan(
                text: " My",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              TextSpan(
                  text: " name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                   ),
                  ),
                  TextSpan(
                    text: " is",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                   ),
                  ),
              TextSpan(
                text: " Nurislam",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 150,
          color: Colors.purple,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 0.5,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.deepOrangeAccent,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed( // here I used  another method it's littl bit different compare with  Navigator.push
                    context,
                    "/",
                  );
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
