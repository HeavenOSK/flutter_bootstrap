import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home/home_page.dart';
import 'router.dart';
import 'util/util.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: context.read<AppNavigator>().key,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: context.read<Router>().onGenerateRoute,
      home: MyHomePage.wrapped(),
    );
  }
}
