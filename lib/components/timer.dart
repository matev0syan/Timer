import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: const Center(
        child: Text(
          '${0}${0}:${0}${0}',
          style: TextStyle(
              color: Color.fromARGB(255, 251, 251, 251),
              fontSize: 50,
              fontFamily: 'Times New Roman'),
        ),
      ),
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
              width: 2, color: const Color.fromARGB(255, 31, 48, 236))),
    );
  }
}
