String longestUniqueSubstring(String str) {
    String repeat = "";
    String moreLarge = "";
    for (int i = 0; i < str.length; i++) {
    bool encontrado = false;
        for (int j = 0; j < repeat.length; j++) {
            if (str[i] == repeat[j]) {
                encontrado = true;
                break;
            }
        }
        if(encontrado == false) {
            repeat = repeat + str[i];
        } else {
            if (repeat.length > moreLarge.length) {
                moreLarge = repeat;
            }
            int pos = repeat.indexOf(str[i]);
            repeat = repeat.substring(pos + 1) + str[i];
        }
    }
    if (repeat.length > moreLarge.length) {
        moreLarge = repeat;
    }
    return moreLarge;
}