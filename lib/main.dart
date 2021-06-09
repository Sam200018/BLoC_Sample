import 'package:bloc_sample/bloc/counter/counter_bloc.dart';
import 'package:bloc_sample/pages/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<CounterBloc>(create: (_) => CounterBloc())],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}
