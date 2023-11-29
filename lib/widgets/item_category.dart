import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        color: Color.fromARGB(255, 252, 212, 198),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Text(
            name,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
