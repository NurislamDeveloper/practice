import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now()
  , end: DateTime.now(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 41, 62),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title:const  Text(
          "Flutter",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: Center(
        child:
        Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children:<Widget> [
        Text(
          "${selectedDates.duration.inDays}",
        ),
        ElevatedButton(child:
        const  Text("Choose Dates"),
        onPressed: () async{
     final DateTimeRange? dateTimeRange = await showDateRangePicker(
      context: context,
       firstDate: DateTime(2000), 
       lastDate: DateTime(3000),
       );
       if(dateTimeRange != null) {
        setState(() {
          selectedDates = dateTimeRange;
        });
       }
        },
        ),
       ],
        ),
        ),
    );
  }
}
