import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    return fetchUserData().then((user) {
      String id = json.decode(user)["id"];
      return fetchUserOrders(id).then((products) async {
        double finalPrice = 0.0;
        for (String product in json.decode(products)) {
          await fetchProductPrice(product).then((price) {
            finalPrice += json.decode(price);
          });
        }
        return finalPrice;
      });
    });
  } catch (err) {
    return -1;
  }
}