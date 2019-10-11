import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/blocs/counter_bloc.dart';
import 'package:provider_demo/pages/counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => CounterBloc()),
      ],
      child: Consumer<CounterBloc>(
        builder: (context, counter, _) {
          return MaterialApp(
            home: Counter(),
          );
        },
      ),
    );
  }
}
