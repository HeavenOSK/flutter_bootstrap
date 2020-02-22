import 'package:dot_of/dot_of.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage._({Key key}) : super(key: key);

  static Widget wrapped() {
    return ChangeNotifierProvider(
      create: (_) => Model(),
      child: const MyHomePage._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'You have pushed the button this many times:',
            ),
            _CounterText(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<Model>().increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class _CounterText extends StatelessWidget {
  const _CounterText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = context.select<Model, int>((model) => model.counter);
    return Text(
      '$counter',
      style: context.theme.textTheme.display1,
    );
  }
}
