import 'package:counter_app/widget/counter_wid.dart';
import 'package:counter_app/widget/decrement_wid.dart';
import 'package:counter_app/widget/increment_wid.dart';
import 'package:counter_app/widget/reset_wid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Event Bus Example'),
        ),
        body: Container(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CounterText(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IncrementButton(),
                    DecrementButton(),
                    ResetButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}