import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Offset _offset = const Offset(200, 250);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text(
          "LongPressDraggable",
          style: TextStyle(
            color: Color.fromARGB(255, 9, 23, 46),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
       Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                    left: _offset.dx,
                    top: _offset.dy,
                    child: LongPressDraggable(
                        feedback: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2scUlLDDwH25m4T86uiWuYiyqzywvoCt2zQ&s",
                          height: 200,
                          color: Colors.orangeAccent,
                          colorBlendMode: BlendMode.colorBurn,
                        ),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2scUlLDDwH25m4T86uiWuYiyqzywvoCt2zQ&s",
                          height: 200,
                        ),
                        onDragEnd: (details) {
                          setState(
                            () {
                              double adjustment =
                                  MediaQuery.of(context).size.height -
                                      constraints.maxHeight;
                              _offset = Offset(details.offset.dx,
                                  details.offset.dy - adjustment);
                            },
                          );
                         },
                       ),
                     ),
                   ],
                  );
                 },
               ),
              ),
             );
           }
         }