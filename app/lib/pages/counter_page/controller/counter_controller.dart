import 'package:state_notifier/state_notifier.dart';

import 'counter.dart';

export 'counter.dart';

class CounterController extends StateNotifier<Counter> {
  CounterController() : super(const Counter());

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
