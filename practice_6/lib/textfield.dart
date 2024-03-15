import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Offset offset = const Offset(200, 250);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 38, 51),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: const Text(
            "Flutter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
        body: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Positioned(
                    left: offset.dx,
                    top: offset.dx,
                    child: LongPressDraggable(
                      feedback: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZQidV1nyTS2hzozGjm-cARa6s6-Jnc6UiUmNL-L_Unw&s",
                        height: 200,
                        color: Colors.orangeAccent,
                        colorBlendMode: BlendMode.colorBurn,
                      ),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZQidV1nyTS2hzozGjm-cARa6s6-Jnc6UiUmNL-L_Unw&s",
                        height: 200,
                      ),
                      onDragEnd: (details) {
                        setState(() {
                          double adjustment =
                              MediaQuery.of(context).size.height -
                                  constraints.maxHeight;
                          offset = Offset(details.offset.dx,
                              details.offset.dy - adjustment);
                        });
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
