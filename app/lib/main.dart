import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';

import 'app.dart';
import 'redux/redux.dart';
import 'router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        Provider(
          builder: (context) => Store<AppState>(
            appReducer,
            initialState: AppState.initialize(),
            middleware: appMiddleware(),
          ),
        ),
        Provider(
          builder: (context) => Router(),
        )
      ],
      child: const App(),
    ),
  );
}
