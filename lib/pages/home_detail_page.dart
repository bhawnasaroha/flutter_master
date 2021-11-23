import 'package:flutter/material.dart';
import 'package:flutter_master/models/catalog.dart';
import 'package:flutter_master/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(
          //   catalog.name,
          //   style: TextStyle(
          //     fontSize: 18,
          //   ),
          // ),
          ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}"
                .text
                .bold
                .xl4
                .color(MyTheme.primaryColor)
                .make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.xl.make(),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyTheme.darkBluish),
                shape: MaterialStateProperty.all(
                  const StadiumBorder(),
                ),
              ),
            ).wh(100, 40),
          ],
        ).p32(),
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context).px32(),
            Expanded(
              child: VxArc(
                height: 30,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.bold
                          .color(MyTheme.darkBluish)
                          .make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle!)
                          .make(),
                      20.heightBox,
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
