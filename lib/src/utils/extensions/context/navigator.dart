import 'package:flutter/material.dart';

extension NavigatorExtended on BuildContext {
  NavigatorState get navigator => Navigator.of(this);

  push(Widget page) => navigator.push(
        MaterialPageRoute(
          builder: (_) => page,
        ),
      );

  pop() => navigator.pop();

  removeAllAndPush(Widget page) => navigator.pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => page,
        ),
        (route) => false,
      );
}
