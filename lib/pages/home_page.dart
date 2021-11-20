import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';
import '../widgets/item_widget.dart';
import '../models/catalog.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJSON = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = await jsonDecode(catalogJSON);
    var productsData = await decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Master",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: CatalogModel.items!.length,
                itemBuilder: (context, index) {
                  final item = CatalogModel.items![index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridTile(
                      header: Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          item.name,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: Image.network(item.image),
                      footer: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          item.price.toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: FMDrawer(),
    );
  }
}
