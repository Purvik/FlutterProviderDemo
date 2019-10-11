import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/blocs/counter_bloc.dart';

class DecrementButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: FlatButton.icon(
        onPressed: () => counterBloc.decrement(),
        icon: Icon(
          Icons.remove,
          color: Colors.white,
        ),
        label: Text(
          'Minus',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
