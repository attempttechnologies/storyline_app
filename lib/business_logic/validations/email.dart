abstract class AbstractEmailValidation {
  bool validateEmail({required String email});
}

class EmailValidation implements AbstractEmailValidation {
  final String _regexPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  bool validateEmail({required String email}) {
    if (RegExp(_regexPattern).hasMatch(email)) {
      return true;
    } else {
      return false;
    }
  }
}
