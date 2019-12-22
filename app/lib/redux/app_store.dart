import 'package:redux/redux.dart';

import 'app/app.dart';

Store<AppState> appStore() {
  return Store(
    appReducer,
    initialState: AppState.initialize(),
    middleware: appMiddleware(),
  );
}
