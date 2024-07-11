import 'dart:async';
import 'package:event_bus/event_bus.dart';

import '../events/event.dart';
import '../events/eventbus.dart';

class IncrementButtonBloc {
  final EventBus _eventBus = eventBus;
  late StreamSubscription _incrementAckSubscription;
  IncrementButtonBloc() {
    _incrementAckSubscription =
        _eventBus.on<IncrementAckEvent>().listen((event) {
          print('Received Increment Acknowledgment');
        });
  }
  void increment() {
    _eventBus.fire(const IncrementEvent());
  }
  void dispose() {
    _incrementAckSubscription.cancel();
  }
}