import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
    try {
        final userDataJson = await fetchUserData();
        final userData = jsonDecode(userDataJson);

        final ordersJson = await fetchUserOrders(userData['id']);

        final orders = jsonDecode(ordersJson);

        double total = 0;

        for (int i = 0; i < orders.length; i++) {
            final priceJson = await fetchProductPrice(orders[i]);
            final price = jsonDecode(priceJson);
            total += price;
        }

        return total;

    } catch (error) {
        return -1;
    }
}