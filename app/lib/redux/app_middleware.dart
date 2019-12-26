import 'package:redux/redux.dart';

import 'app_state.dart';
import 'middleware/middleware.dart';

List<Middleware<AppState>> appMiddleware() {
  return [
    ...counterMiddleware(),
  ];
}
