import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int curentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 10, 33, 52),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 85, 84, 84),
        centerTitle: true,
        title: const Text(
          "Stepper",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        toolbarHeight: 60,
      ),
      body: Center(
        child: Stepper(
          steps: [
            Step(
              isActive: curentStep == 0,
              title: const Text(
                "step 1",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              content: const Text(
                "information for step 1",
                style: TextStyle(
                  color: Color.fromARGB(255, 226, 26, 26),
                ),
              ),
            ),
            Step(
              isActive: curentStep == 1,
              title: const Text("step 2",
              style: TextStyle(
                  color: Colors.white,
                ),
              ),
              content: const Text(
                "information for step 2",
                style: TextStyle(
                color: Color.fromARGB(255, 226, 26, 26),
                ),
              ),
            ),
            Step(
              isActive: curentStep == 2,
              title: const Text("step 3",
              style: TextStyle(
                  color: Colors.white,
                ),
              ),
              content: const  Text(
                "information for step 3",
                style: TextStyle(
                color: Color.fromARGB(255, 226, 26, 26),
                ),
              ),
            ),
            Step(
              isActive: curentStep == 3,
              title: const Text("step 4",
              style: TextStyle(
                  color: Colors.white,
                ),
              ),
              content: const Text(
                "information for step 5",
                style: TextStyle(
                color: Color.fromARGB(255, 226, 26, 26),
                ),
              ),
            ),
            Step(
              isActive: curentStep == 4,
              title: const Text("step 5",
              style: TextStyle(
                  color: Colors.white,
                ),
              ),
              content: const Text(
                "information for step 5",
                style: TextStyle(
                color: Color.fromARGB(255, 226, 26, 26),
                ),
              ),
            ),
          ],
          onStepTapped: (int newValue) {
            setState(() {
              curentStep = newValue;
            });
          },
        currentStep: curentStep,
          onStepContinue: () {
            if (curentStep != 4) {
              setState(() {
                curentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (curentStep != 0) {
              setState(() {
                curentStep -= 1;
              });
            }
          },
          type: StepperType.vertical,
        ),
      ),
    );
  }
}
