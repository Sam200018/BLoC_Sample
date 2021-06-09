import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState());

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is Reset) {
      yield CounterState(
        counterResult: 0,
      );
    } else if (event is AddOne) {
      yield CounterState(counterResult: state.counterResult + event.number);
    } else if (event is SubstractOne) {
      yield CounterState(counterResult: state.counterResult - event.number);
    }
  }
}
