import 'package:flutter/material.dart';
import 'package:flutter_master/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Product Catalog".text.xl4.bold.color(MyTheme.darkBluish).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
