String longestUniqueSubstring(String str) {
    String repeat = "";
    bool encontrado = false;

    for (int i = 0; i < str.length; i++) {
        for (int j = 0; j < repeat.length; j++) {
            if (str[i] == repeat[j]) {
                encontrado = true;
                break;
            }
        }
        if(encontrado == false) {
            repeat = repeat + str[i];
        }
    }
    return repeat;
}