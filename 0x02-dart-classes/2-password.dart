class Password {
    String password = "";

    Password();

    bool isValid() {
        if(password.length < 8 || password.length > 16) {
            return false;
        }

        bool isUpper = password.contains(RegExp(r'[A-Z]'));

        bool isLower = password.contains(RegExp(r'[a-z]'));

        bool hasdigit = password.contains(RegExp(r'[\d]'));

        return isUpper && isLower && hasdigit;
    }


    String toString() {
        return 'Your Password is: ${password}';
    }   
}