import 'package:flutter/material.dart';
import '../bloc/reset_bloc.dart';
class ResetButton extends StatelessWidget {
  final ResetButtonBloc bloc = ResetButtonBloc();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        bloc.reset();
      },
      child: Text('Reset Counter'),
    );
  }
}