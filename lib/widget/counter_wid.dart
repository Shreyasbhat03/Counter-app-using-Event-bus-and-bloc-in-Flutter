import 'package:flutter/material.dart';
import '../bloc/counter_bloc.dart';
class CounterText extends StatefulWidget {
  @override
  _CounterTextState createState() => _CounterTextState();
}
class _CounterTextState extends State<CounterText> {
  final CounterTextBloc bloc = CounterTextBloc();
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: bloc.counterStream,
      initialData: 0,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text('Counter: ${snapshot.data}',style: TextStyle(fontSize: 20),);
        } else {
          return Text('Loading...');
        }
      },
    );
  }
}