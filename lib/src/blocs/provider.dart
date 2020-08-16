import 'package:flutter/material.dart';
import 'bloc.dart';

// ignore: must_be_immutable
class Provider extends InheritedWidget {
  var bloc = Bloc();
  Provider({Key key, Widget child}) : super(key: key, child: child);

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
    throw UnimplementedError();
  }
}
