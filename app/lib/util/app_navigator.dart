import 'package:flutter/cupertino.dart';

class AppNavigator {
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => key.currentState;

  void pushNamed(String routeName, {Object arguments}) =>
      _navigator.pushNamed(routeName, arguments: arguments);

  void pushReplacementNamed(String routeName, {Object arguments}) =>
      _navigator.pushReplacementNamed(routeName, arguments: arguments);

  void pushNamedAndRemoveUntil(String routeName, {Object arguments}) =>
      _navigator.pushNamedAndRemoveUntil(
        routeName,
        (_) => false,
        arguments: arguments,
      );

  void pop() => _navigator.maybePop();
}
