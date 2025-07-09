List<double>convertToF(List<double> temperaturesInC) {
    List<double>temperaturesInF = [];

    for (int i = 0; i < temperaturesInC.length; i++) {
        double fahrenheit = (temperaturesInC[i] * 9/5) + 32;
        String result = fahrenheit.toStringAsFixed(2);
        double tempresult = double.parse(result);
        temperaturesInF.add(tempresult);
    }
    return temperaturesInF;
}