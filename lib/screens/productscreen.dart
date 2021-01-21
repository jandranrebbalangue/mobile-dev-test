import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_cart/model/products.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        var data = snapshot.data;
        var itemMap = json.decode(snapshot.data);
        var item = Products.fromJson(itemMap);

        print(item);
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }
        return ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, int index) {
              return new Card(
                child: Container(
                  child: Column(
                    children: [
                      Text('${item.products[index].id}'),
                      Text('${item.products[index].category}'),
                      Text('${item.products[index].name}'),
                      Text('${item.products[index].price}'),
                      Text('${item.products[index].bgColor}')
                    ],
                  ),
                ),
              );
            });
      },
    );
  }

  // fetchData(String response) {
  //   final products = productsFromJson(response);

  //   var product = productsToJson(products);

  //   return product;
  // }

  Future<String> getData() {
    return rootBundle.loadString('assets/products.json');
  }
}
