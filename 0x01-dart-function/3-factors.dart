int fact(int f) {
    int factorial = 1;
    if (f == 1 || f <= 0) {
        return 1;
    }
    else {
        for (int i = 1; i <= f; i++) {
            factorial = factorial * i;
        }
        return factorial;        
    }
}