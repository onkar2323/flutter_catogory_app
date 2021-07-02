class catalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 999,
        color: "#33405a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiPRQaUYZENb4WKI4ZH6cj1ChyDIdIlYlpVth1G9vhMCzK2BxNoJDO717TwOfMxyuCCv6JTEM&usqp=CAc")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
