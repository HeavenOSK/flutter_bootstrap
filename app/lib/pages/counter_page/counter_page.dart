import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controller/counter_controller.dart';

part 'counter_page.g.dart';

Widget counterPage() {
  final counterController = useProvider(counterControllerProvider);
  final counter = useProvider(counterControllerProvider.state);
  return Scaffold(
    appBar: AppBar(
      title: const Text('Counter Page'),
    ),
    body: Center(
      child: Text(counter.count.toString()),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: counterController.increment,
      child: const Icon(Icons.add),
    ),
  );
}
