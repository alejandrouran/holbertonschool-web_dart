class Password {
  String _password = "";

  String get password => _password;
  set password(String value) => _password = value;

  bool isValid() {
    // Check the length of the password
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    // Check if the password contains uppercase letters, lowercase letters, and numbers
    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasNumbers = _password.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasNumbers;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}