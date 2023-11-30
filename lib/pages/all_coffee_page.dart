import 'package:coffee_shop/models/Coffee.dart';
import 'package:coffee_shop/pages/detail_coffee_page.dart';
import 'package:coffee_shop/widgets/item_product.dart';
import 'package:flutter/material.dart';

class AllCoffeePage extends StatefulWidget {
  const AllCoffeePage({super.key});

  @override
  State<AllCoffeePage> createState() => _AllCoffeePageState();
}

class _AllCoffeePageState extends State<AllCoffeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Todos los Productos',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: ListView.builder(
          itemCount: listOfCoffee.length,
          itemBuilder: (BuildContext context, int index) {
            late Map<String, dynamic> product = listOfCoffee[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ItemProduct(
                name: product['name'],
                description: product['description'],
                image: product['image'],
                price: product['price'],
                category: product['category'],
                height: MediaQuery.sizeOf(context).height * 0.48,
                width: MediaQuery.sizeOf(context).height * 0.2,
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailsCoffeePage(
                        product: product,
                      ),
                    ),
                  )
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
