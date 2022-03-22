class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        description: "Apple iphone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://res-2.cloudinary.com/grover/image/upload/v1630928581/fqqvgrbrrlwterxyxaji.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}
