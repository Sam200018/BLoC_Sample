import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_sample/bloc/counter/counter_bloc.dart';

class ResultsOperation extends StatelessWidget {
  const ResultsOperation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Center(
          child: Text(
            state.counterResult.toString(),
            style: TextStyle(fontSize: 40.0),
          ),
        );
      },
    );
  }
}
