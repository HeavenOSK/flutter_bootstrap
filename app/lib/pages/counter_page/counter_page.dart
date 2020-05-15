import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/pages/counter_page/controller/counter_controller.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

/// A page which shows counter.
class CounterPage extends StatelessWidget {
  const CounterPage._({Key key}) : super(key: key);

  static Widget wrapped() {
    return StateNotifierProvider<CounterController, Counter>(
      create: (_context) => CounterController(),
      child: const CounterPage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<CounterController>();
    final counter = context.watch<Counter>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Text(counter.count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
