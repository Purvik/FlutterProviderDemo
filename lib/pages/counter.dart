import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/blocs/counter_bloc.dart';
import 'package:provider_demo/widgets/decrement.dart';
import 'package:provider_demo/widgets/increment.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 60.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IncrementButton(),
                  SizedBox(
                    width: 10.0,
                  ),
                  DecrementButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
