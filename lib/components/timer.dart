import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer/components/time_buttons.dart';
import '../bloc/timer_bloc.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 31, 48, 236),
                          blurRadius: 20,
                          spreadRadius: 2,
                        )
                      ],
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(150),
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 31, 48, 236))),
                  child: Center(
                    child: Text(
                      '${context.select((TimerBloc bloc) => bloc.state.duration)}',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 251, 251, 251),
                          fontSize: 50,
                          fontFamily: 'Times New Roman'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const TimerButtons(),
              ],
            ),
          ),
        ));
  }
}

// class Background extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return WaveWidget(
//       config: CustomConfig(
//         gradients: [
//           [
//             Color.fromRGBO(72, 74, 126, 1),
//             Color.fromRGBO(125, 170, 206, 1),
//             Color.fromRGBO(184, 189, 245, 0.7)
//           ],
//           [
//             Color.fromRGBO(72, 74, 126, 1),
//             Color.fromRGBO(125, 170, 206, 1),
//             Color.fromRGBO(172, 182, 219, 0.7)
//           ],
//           [
//             Color.fromRGBO(72, 73, 126, 1),
//             Color.fromRGBO(125, 170, 206, 1),
//             Color.fromRGBO(190, 238, 246, 0.7)
//           ],
//         ],
//         durations: [19440, 10800, 6000],
//         heightPercentages: [0.03, 0.01, 0.02],
//         gradientBegin: Alignment.bottomCenter,
//         gradientEnd: Alignment.topCenter,
//       ),
//       size: Size(double.infinity, double.infinity),
//       waveAmplitude: 25,
//       backgroundColor: Colors.blue[50],
//     );
//   }
// }
