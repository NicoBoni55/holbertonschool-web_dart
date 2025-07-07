double calculateArea(double height, double base) {
    double result = base * height / 2;
    String resultstr = result.toStringAsFixed(2);
    double resultdouble = double.parse(resultstr);

    return resultdouble;
}