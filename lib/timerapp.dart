import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer/main.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 72, 255),
        title: Center(child: Text('Timer')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CounterScreen()),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    button = false;
                  },
                  icon: Icon(Icons.restore_sharp)),
              IconButton(
                  onPressed: () {
                    button = true;
                  },
                  icon: Icon(Icons.play_arrow_rounded)),
            ],
          )
        ],
      ),
    );
  }
}
