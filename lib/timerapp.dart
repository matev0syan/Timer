import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Center(
              child: Text(
            '00:00:00',
            style: TextStyle(fontSize: 55),
          )),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.restore_sharp)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.play_arrow_rounded)),
            ],
          )
        ],
      ),
    );
  }
}
