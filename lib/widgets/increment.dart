import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/blocs/counter_bloc.dart';

class IncrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: FlatButton.icon(
        icon: Icon(
          Icons.add,
          color: Colors.white,
          size: 30.0,
        ),
        label: Text(
          'Add',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => counterBloc.increment(),
      ),
    );
  }
}
