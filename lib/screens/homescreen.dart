import 'package:flutter/material.dart';
import 'package:shopping_cart/screens/productscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shop"),
          actions: [Icon(Icons.shopping_cart)],
        ),
        body: Container(
          child: ProductScreen(),
        ));
  }
}
