import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:event_bus/event_bus.dart';
import '../events/event.dart';
import '../events/eventbus.dart';


class DecrementButtonBloc {
  final EventBus _eventBus = eventBus;
  late StreamSubscription _decrementAckSubscription;
  DecrementButtonBloc() {
    _decrementAckSubscription =
        _eventBus.on<DecrementAckEvent>().listen((event) {
// Handle decrement acknowledgment
// Example: Display a snackbar or perform any UI update
          print('Received Decrement Acknowledgment');
        });
  }
  void decrement() {
    _eventBus.fire(const DecrementEvent());
  }
  void dispose() {
    _decrementAckSubscription.cancel();
  }
}