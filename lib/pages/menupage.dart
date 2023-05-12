import 'package:flutter/material.dart';

import '../datamanager.dart';
import '../datamodel.dart';

class MenuPage extends StatelessWidget {
  final DataManager dataManager;
  const MenuPage({super.key, required this.dataManager});

  @override
  Widget build(BuildContext context) {
    var p1 = Product(id: 1, name: "Dummy Product 1", price: 1.25, image: "");
    var p2 = Product(id: 2, name: "Dummy Product 2", price: 5.45, image: "");
    var p3 = Product(id: 3, name: "Dummy Product 3", price: 3.15, image: "");
    return ListView(
      children: [
        ProductItem(
          product: p1,
          onAdd: () {},
        ),
        ProductItem(
          product: p2,
          onAdd: () {},
        ),
        ProductItem(
          product: p3,
          onAdd: () {},
        ),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final Function onAdd;

  const ProductItem({super.key, required this.product, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("Images/black_coffee.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('\$${product.price}'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      onAdd(product);
                    },
                    child: const Text('Add'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
