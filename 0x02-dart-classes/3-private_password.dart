class Password {
    String _password = "";

    Password({required String password}): _password = password;

    String get password => _password;

    set password(String value) {
        _password = value;
    }

    bool isValid() {
        if(_password.length < 8 || _password.length > 16) {
            return false;
        }

        bool isUpper = _password.contains(RegExp(r'[A-Z]'));

        bool isLower = _password.contains(RegExp(r'[a-z]'));

        bool hasdigit = _password.contains(RegExp(r'[\d]'));

        return isUpper && isLower && hasdigit;
    }


    String toString() {
        return 'Your Password is: ${_password}';
    }   
}