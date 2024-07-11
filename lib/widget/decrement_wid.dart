import 'package:flutter/material.dart';
import '../bloc/sub_bloc.dart';
class DecrementButton extends StatelessWidget {
  final DecrementButtonBloc bloc = DecrementButtonBloc();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        bloc.decrement();
      },
      child: Text('Decrement'),
    );
  }
}