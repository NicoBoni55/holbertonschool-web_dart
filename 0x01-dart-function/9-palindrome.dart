bool isPalindrome(String s) {
    if (s.length < 3) {
        return false;
    }
    String reverse = "";
    for (int i = s.length - 1; i >= 0; i--) {
        reverse = reverse + s[i];
    }
    return s == reverse;
}