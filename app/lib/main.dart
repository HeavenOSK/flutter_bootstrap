import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'router.dart';
import 'util/util.dart';

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
