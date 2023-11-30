import 'package:coffee_shop/models/Coffee.dart';
import 'package:coffee_shop/pages/all_coffee_page.dart';
import 'package:coffee_shop/pages/detail_coffee_page.dart';
import 'package:coffee_shop/widgets/item_category.dart';
import 'package:coffee_shop/widgets/item_product.dart';
import 'package:coffee_shop/widgets/search_box.dart';
import 'package:coffee_shop/widgets/start_order_buttom.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> filteredProducts = [];

  List categories = [
    ['Bebidas Calientes', false, "hd"],
    ['Bebidas Frias', false, "cd"],
    ['Aperitivos', false, "ap"],
  ];

  @override
  void initState() {
    super.initState();
    chooseItem(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: Builder(
          builder: ((context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const SvgIcon(
                'assets/icons/menu_icon.svg',
                height: 25,
              ),
            );
          }),
        ),
        title: Text(
          DateFormat('EEEE, MMMM d', 'es').format(DateTime.now()),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const SvgIcon(
                'assets/icons/shopping_car.svg',
                height: 30,
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bienvenid@',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8,
                        ),
                      ),
                      Text(
                        'Elige lo que quieras con libertad',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 77, 77, 77),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const SearchBox(),
                const SizedBox(height: 15),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.065,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemCategory(
                        name: categories[index][0],
                        isSelected: categories[index][1],
                        onTap: () => chooseItem(index),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.35,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: filteredProducts.length,
                        itemBuilder: (BuildContext context, int index) {
                          late Map<String, dynamic> product =
                              filteredProducts[index];
                          return ItemProduct(
                            name: product['name'],
                            description: product['description'],
                            image: product['image'],
                            price: product['price'],
                            category: product['category'],
                            height: MediaQuery.sizeOf(context).height * 0.35,
                            width: MediaQuery.sizeOf(context).height * 0.24,
                            onTap: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => DetailsCoffeePage(
                                    product: product,
                                  ),
                                ),
                              )
                            },
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const AllCoffeePage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '-- > Ver todos los productos <--',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.brown,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.28,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/img/capuccino.jpg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const StartOrder(),
    );
  }

  void chooseItem(int index) {
    setState(() {
      for (int i = 0; i < categories.length; i++) {
        {
          categories[i][1] = false;
        }
        categories[index][1] = true;
      }

      filteredProducts = listOfCoffee
          .where((product) => product['category'] == categories[index][2])
          .toList();
    });
  }
}
