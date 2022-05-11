import 'package:flutter/material.dart';

import '../bloc/timer_bloc.dart';

class TimerButtons extends StatelessWidget {
  const TimerButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          iconSize: 40,
          onPressed: () {},
          icon: const Icon(
            Icons.restore_sharp,
            color: Color.fromARGB(255, 31, 48, 236),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        IconButton(
          iconSize: 40,
          onPressed: () {
            secondss++;
          },
          icon: const Icon(
            Icons.play_arrow_rounded,
            color: Color.fromARGB(255, 31, 48, 236),
          ),
        ),
      ],
    );
  }
}
