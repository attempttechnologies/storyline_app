import 'package:flutter/cupertino.dart';
import 'package:storyline_app/business_logic/providers/abstract_provider.dart';

class AuthProvider extends InheritedWidget implements AbstractProvider {
  AuthProvider(child) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static AuthProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AuthProvider>();
  }
}
