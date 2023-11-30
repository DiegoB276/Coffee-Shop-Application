// ignore: file_names
class Coffee {
  Coffee({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.category,
  });

  final String? name;
  final String? description;
  final String? image;
  final int? price;
  final String? category;
}

List<Map<String, dynamic>> listOfCoffee = [
  {
    "name": "Espresso Mediano 7oz",
    "description":
        "Delicioso capuccino de 5oz, pensado especialmente para compartir con tu pareja.",
    "image": "assets/img/espresso_7.jpg",
    "price": 4000,
    "category": "hd",
  },
  {
    "name": "Capuccino Frappe",
    "description":
        "Delicioso capuccino de 5oz, pensado especialmente para compartir con tu pareja.",
    "image": "assets/img/frape.jpg",
    "price": 5000,
    "category": "cd",
  },
  {
    "name": "Espresso Frio con Chantillí 9oz",
    "description":
        "Delicioso capuccino de 5oz, pensado especialmente para compartir con tu pareja.",
    "image": "assets/img/cold_coffee.webp",
    "price": 5000,
    "category": "cd",
  },
  {
    "name": "Capuccino Mediano 7oz",
    "description":
        "Delicioso capuccino de 5oz, pensado especialmente para compartir con tu pareja.",
    "image": "assets/img/capuccino.jpg",
    "price": 5000,
    "category": "hd",
  },
  {
    "name": "Capuccino Grande 9oz",
    "description":
        "Delicioso capuccino de 5oz, pensado especialmente para compartir con tu pareja.",
    "image": "assets/img/big_capuccino.jpg",
    "price": 6000,
    "category": "hd",
  },
];
