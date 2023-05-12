import 'package:flutter/material.dart';
import 'datamanager.dart';
import 'pages/menupage.dart';
import 'pages/offerspage.dart';
import 'pages/orderpage.dart';

void main() {
  runApp(const MyApp());
}

class Greet extends StatefulWidget {
  const Greet({super.key});

  @override
  State<Greet> createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  var name = "";
  @override
  Widget build(BuildContext context) {
    var greetStyle = const TextStyle(
      color: Colors.blue,
      fontSize: 40,
    );
    return Column(
      children: [
        Row(
          children: [
            Text('Hello, $name', style: greetStyle),
            Text('!!!', style: greetStyle),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 0,
            left: 100.0,
            right: 10.0,
          ),
          child: TextField(onChanged: (value) => setState(() => name = value)),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Masters',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var datamanager = DataManager();
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    late Widget currentWidgetPage;

    switch (selectedIndex) {
      case 0:
        currentWidgetPage = MenuPage(
          dataManager: datamanager,
        );
        break;
      case 1:
        currentWidgetPage = const OffersPage();
        break;
      case 2:
        currentWidgetPage = OrderPage(
          dataManager: datamanager,
        );
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset("images/logo.png")),
      ),
      body: currentWidgetPage,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.yellow.shade400,
          unselectedItemColor: Colors.brown.shade50,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.content_paste_off_rounded),
              label: "Menu",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: "Offers",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Order",
            ),
          ]),
    );
  }
}
