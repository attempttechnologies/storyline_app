import 'package:flutter/material.dart';

abstract class AbstractProvider {
  bool updateShouldNotify(covariant InheritedWidget oldWidget);
}
