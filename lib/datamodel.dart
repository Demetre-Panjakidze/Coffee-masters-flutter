class Product {
  // properties
  late int id;
  late String name;
  late double price;
  late String image;
  String get imageUrl =>
      "https://firtman.github.io/coffeemasters/api/images/$image";

  //constructor
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
}

class Category {
  late String name;
  late List<Product> products;

  Category({required this.name, required this.products});
}

class ItemInCart {
  late Product product;
  late int quantity;

  ItemInCart({required this.product, required this.quantity});
}
