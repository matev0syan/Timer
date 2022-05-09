// part of 'timer_bloc.dart';

// @immutable
// abstract class TimerState extends Equatable {
//   final double percent;
//   final String timerStr;
//   final bool isRun;

//   const TimerState(this.timerStr, this.percent, this.isRun);

//   @override
//   List<Object> get props => [timerStr, percent];
// }

// class TimerInitial extends TimerState {
//   const TimerInitial(String timerStr, double percent)
//       : super(timerStr, percent, false);
//   @override
//   String toString() => 'Timerinitial {timerStr:$timerStr}';
// }

// class TimerRunState extends TimerState {
//   const TimerRunState(String timerStr, double percent)
//       : super(timerStr, percent, true);
//   @override
//   String toString() => 'TimerRunState {timerStr:$timerStr}';
// }

// class TimerPauseState extends TimerState {
//   const TimerPauseState(String timerStr, double percent)
//       : super(timerStr, percent, false);
//   @override
//   String toString() => 'TimerPauseState {timerStr:$timerStr}';
// }

// class TimerRunComplete extends TimerState {
//   const TimerRunComplete() : super('00:00', 0, false);
// }
