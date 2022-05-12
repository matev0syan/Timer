import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/timer_bloc.dart';

class TimerButtons extends StatelessWidget {
  const TimerButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (state is TimerInitial) ...[
              FloatingActionButton(
                  backgroundColor: const Color.fromARGB(214, 65, 63, 63),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () => context
                      .read<TimerBloc>()
                      .add(TimerStarted(state.duration))),
            ] else if (state is TimerRunInProgress) ...[
              FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 36, 36, 36),
                  child: const Icon(
                    Icons.pause,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () =>
                      context.read<TimerBloc>().add(const TimerPaused())),
              FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 36, 36, 36),
                  child: const Icon(
                    Icons.refresh,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () => context.read<TimerBloc>().add(TimerReset())),
            ] else if (state is TimerRunPause) ...[
              FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 36, 36, 36),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () => context
                      .read<TimerBloc>()
                      .add(TimerResumed(state.duration))),
              FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 36, 36, 36),
                  child: const Icon(
                    Icons.refresh,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () => context.read<TimerBloc>().add(TimerReset())),
            ] else if (state is TimerRunComplete) ...[
              FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 36, 36, 36),
                  child: const Icon(
                    Icons.refresh,
                    color: Color.fromARGB(255, 203, 203, 210),
                  ),
                  onPressed: () => context.read<TimerBloc>().add(TimerReset()))
            ],
          ],
        );
      },
    );
  }
}
