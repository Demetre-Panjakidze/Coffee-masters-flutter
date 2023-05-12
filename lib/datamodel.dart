class Product {
  // properties
  late int id;
  late String name;
  late double price;
  late String image;
  String get imageUrl =>
      "https://firtman.github.io/coffeemasters/api/images/$image";

  // constructor
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  // factory constructor
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'] as int,
        name: json['name'] as String,
        price: json['price'] as double,
        image: json['image'] as String);
  }
}

class Category {
  // properties
  late String name;
  late List<Product> products;

  // constructor
  Category({required this.name, required this.products});

  // factory constructor
  factory Category.fromJson(Map<String, dynamic> json) {
    var productsJson = json['products'] as Iterable<dynamic>;
    var products = productsJson.map((p) => Product.fromJson(p)).toList();
    return Category(name: json['name'] as String, products: products);
  }
}

class ItemInCart {
  late Product product;
  late int quantity;

  ItemInCart({required this.product, required this.quantity});
}
