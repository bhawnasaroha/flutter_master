import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price.toString()}",
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
            textScaleFactor: 1.5,
          ),
          onTap: () {
            print("${item.name} pressed.");
          }),
    );
  }
}
