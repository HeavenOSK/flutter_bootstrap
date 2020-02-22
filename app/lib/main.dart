import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/util/app_navigator.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (_) => AppNavigator()),
        Provider(create: (_) => Router()),
      ],
      child: App(),
    ),
  );
}
