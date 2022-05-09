import 'dart:async';
import 'package:flutter/material.dart';
import 'package:timer/timerapp.dart';

bool button = false;
const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

var digitSeconds;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: const TimerApp(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  /// declare a cound variable with initial value
  int seconds = 0,
      minutes = 0,
      hours = 0,
      seconds1 = 0,
      minutes1 = 0,
      hours1 = 0;

  /// declare a timer
  Timer? timer;

  @override
  void initState() {
    super.initState();

    /// Initialize a periodic timer with 1 second duration
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        /// callback will be executed every 1 second, increament a count value
        /// on each callback
        setState(() {
          seconds++;
          if (seconds == 10) {
            seconds1++;
            seconds = 0;
            if (seconds1 == 6) {
              seconds1 = 0;
              seconds = 0;
              minutes++;
              minutes1 = 0;
            }

            if (minutes == 3) {
              seconds = 0;
              minutes = 0;
              hours++;
            }
          }
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    if (button == true) {
      return Text(
        "0$hours:$minutes1$minutes:$seconds1$seconds",
        style: TextStyle(fontSize: 40),
      );
    } else {
      return Text(
        '00:00:00',
        style: TextStyle(fontSize: 40),
      );
    }
  }
}
