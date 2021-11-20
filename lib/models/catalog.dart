class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th Generation",
      price: 999,
      color: "#33505a",
      image:
          "https://www.pngall.com/wp-content/uploads/5/Apple-iPhone-12-PNG.png",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}
