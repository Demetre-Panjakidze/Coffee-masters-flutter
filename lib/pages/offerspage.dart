import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (size.width > 500) {}
    return ListView(
      children: const [
        Offer(
          title: 'Great offer!',
          description: 'Buy 2, get 3rd for free',
        ),
        Offer(
          title: 'Great offer!',
          description: 'Buy 2, get 3rd for free',
        ),
        Offer(
          title: 'Great offer!',
          description: 'Buy 2, get 3rd for free',
        ),
        Offer(
          title: 'Great offer!',
          description: 'Buy 2, get 3rd for free',
        ),
        Offer(
          title: 'Great offer!',
          description: 'Buy 2, get 3rd for free',
        ),
        Offer(
          title: 'Great offer!',
          description: 'Buy 2, get 3rd for free',
        ),
        Offer(
          title: 'Great offer!',
          description: 'Buy 2, get 3rd for free',
        ),
        Offer(
          title: 'Great offer!',
          description: 'Buy 2, get 3rd for free',
        ),
      ],
    );
  }
}

class Offer extends StatelessWidget {
  final String title;
  final String description;
  const Offer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          elevation: 7,
          color: Colors.amber.shade50,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      color: Colors.amber.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      color: Colors.amber.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          description,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
