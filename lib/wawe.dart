import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WaveWidget(
      config: CustomConfig(
        gradients: [
          [
            Color.fromARGB(255, 215, 15, 15),
            Color.fromARGB(255, 125, 206, 140),
            Color.fromARGB(255, 245, 192, 184)
          ],
          [
            Color.fromARGB(255, 74, 126, 72),
            Color.fromRGBO(125, 170, 206, 1),
            Color.fromARGB(176, 207, 172, 219)
          ],
          [
            Color.fromRGBO(72, 73, 126, 1),
            Color.fromRGBO(125, 170, 206, 1),
            Color.fromRGBO(190, 238, 246, 0.7)
          ],
        ],
        durations: [0, 0, 0],
        heightPercentages: [0.010, 0.01, 0.02],
        gradientBegin: Alignment.bottomCenter,
        gradientEnd: Alignment.topCenter,
      ),
      size: Size(double.infinity, double.infinity),
      waveAmplitude: 50,
      backgroundColor: Color.fromARGB(255, 227, 253, 231),
    );
  }
}
