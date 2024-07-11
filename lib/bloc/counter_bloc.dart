import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:event_bus/event_bus.dart';

import '../events/event.dart';
import '../events/eventbus.dart';



class CounterTextBloc {
  final EventBus _eventBus = eventBus;
  int _counter = 0;
  late StreamController<int> _counterController;
  CounterTextBloc() {
    _counterController = StreamController<int>.broadcast();
    _eventBus.on<AppEvent>().listen((event) {
      if (event is IncrementEvent) {
        _counter++;
        _counterController.add(_counter);
        _eventBus.fire(const IncrementAckEvent());
      } else if (event is DecrementEvent) {
        _counter--;
        _counterController.add(_counter);
        _eventBus.fire(const DecrementAckEvent());
      } else if (event is ResetEvent) {
        _counter = 0;
        _counterController.add(_counter);
        _eventBus.fire(const ResetAckEvent());
      }
    });
  }
  Stream<int> get counterStream => _counterController.stream;
  void dispose() {
    _counterController.close();
  }
}