import 'package:bloc_sample/Widgets/ResultOperation.dart';
import 'package:bloc_sample/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Bloc'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 60.0),
            ResultsOperation(),
            _NumberInput(),
            SizedBox(height: 100.0),
            _buttons(context),
          ],
        ),
      ),
    );
  }

  Widget _buttons(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            onPressed: () => print(counterBloc.state.counterResult),
            icon: Icon(Icons.exposure_minus_1_sharp),
            label: Text('Reiniciar'),
          ),
          SizedBox(width: 15.0),
          ElevatedButton.icon(
            onPressed: () => counterBloc.add(Reset()),
            icon: Icon(Icons.cached),
            label: Text('Reiniciar'),
          ),
          SizedBox(width: 15.0),
          ElevatedButton.icon(
            onPressed: () => counterBloc.add(AddOne(1)),
            icon: Icon(Icons.add),
            label: Text('Sumar'),
          ),
        ],
      ),
    );
  }
}

class _NumberInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = BlocProvider.of<CounterBloc>(context);

    return TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.number,
        onChanged: (number) {
          int s = 0;
          if (number != "") {
            s = int.parse(number);
          } else {
            s = 0;
          }
          counter.add(AddOne(s));
        });
  }
}
