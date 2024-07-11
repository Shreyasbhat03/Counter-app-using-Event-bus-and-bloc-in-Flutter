import 'package:flutter/material.dart';
import '../bloc/add_bloc.dart';
class IncrementButton extends StatelessWidget {
  final IncrementButtonBloc bloc = IncrementButtonBloc();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        bloc.increment();
      },
      child: Text('Increment'),
    );
  }
}
//