int add(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

String showFunc(int a, int b) {
    int result1 = add(a, b);
    int result2 = sub(a, b);

    return "Add ${a} + ${b} = ${result1}\nSub ${a} - ${b} = ${result2}";
}