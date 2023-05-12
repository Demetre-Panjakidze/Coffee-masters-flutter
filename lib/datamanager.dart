import 'datamodel.dart';

class DataManager {
  List<Category>? _menu;
  List<ItemInCart> cart = [];

  DataManager();

  cartAdd(Product p) {
    bool found = false;
    for (var item in cart) {
      if (item.product.id == p.id) {
        item.quantity++;
        found = true;
      }
      if (!found) {
        cart.add(ItemInCart(product: p, quantity: 1));
      }
    }
  }

  cartRemove(Product p) {
    cart.removeWhere((item) => item.product.id == p.id);
  }

  cartClear() {
    cart.clear();
  }

  num cartTotal() {
    num total = 0;
    for (var item in cart) {
      total += item.quantity * item.product.price;
    }
    return total;
  }
}
