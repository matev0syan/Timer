import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer/main.dart';
import 'package:timer/wawe.dart';

import 'components/time_buttons.dart';
import 'components/timer.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 0, 0, 0),
      //   title: Center(
      //     child: Text(
      //       'Timer',
      //       style: TextStyle(color: Color.fromARGB(255, 31, 48, 236)),
      //     ),
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Timer(),
          SizedBox(
            height: 50,
          ),
          TimerButtons(),
        ],
      ),
    );
  }
}
