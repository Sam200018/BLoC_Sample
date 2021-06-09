part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class Reset extends CounterEvent {}

class AddOne extends CounterEvent {
  final int number;
  AddOne(this.number);
}

class SubstractOne extends CounterEvent {
  final int number;
  SubstractOne(this.number);
}
