String longestPalindrome(String s) {
    String longest = "none";

    for (int i = 0; i < s.length; i++) {
        for (int j = i + 2; j < s.length; j++) {
            String sub = s.substring(i, j + 1);
        
        if (isPalindrome(sub)) {
            if (longest == "none" || sub.length > longest.length) {
                longest = sub;
            }
        }
    }
    }
    return longest;
}

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