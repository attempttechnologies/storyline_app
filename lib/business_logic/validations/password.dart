abstract class AbstractPasswordValidation {
  bool validatePassword({required String password});
}

class PasswordValidation implements AbstractPasswordValidation {
  final String _regexPattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';

  bool validatePassword({required String password}) {
    final RegExp regExp = RegExp(_regexPattern);
    if (regExp.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }
}
