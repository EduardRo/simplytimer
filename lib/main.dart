import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(const AppStart());
}

class AppStart extends StatelessWidget {
  const AppStart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simply Timer',
      home: Pomodoro(),
    );
  }
}

class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  double percent = 0;
  static int timeInMinut = 25;
  int timeInSec = timeInMinut * 60;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.black],
              begin: FractionalOffset(
                0.5,
                1,
              ),
            ),
          ),
          width: double.infinity,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'Pomodoro Clock',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
                Expanded(
                  child: CircularPercentIndicator(
                    percent: percent,
                    animation: true,
                    animateFromLastPercent: true,
                    radius: 100,
                    lineWidth: 25,
                    progressColor: Colors.white,
                    center: Text(
                      "$timeInMinut",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
                        right: 20,
                      ),
                      child: Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    'Study Timer',
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.lightBlue),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '25',
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.lightBlueAccent),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    'Pause Timer',
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.lightBlueAccent),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.lightBlueAccent),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: const Text('Submit'),
                    //other properties
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
