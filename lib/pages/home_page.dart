import 'package:coffee_shop/widgets/item_category.dart';
import 'package:coffee_shop/widgets/item_product.dart';
import 'package:coffee_shop/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    'Bebidas Calientes',
    'Bebidas Frias',
    'Aperitivos'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: SvgIcon(
              'assets/icons/shopping_car.svg',
              height: 30,
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SafeArea(
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
                            letterSpacing: 0.8),
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
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.065,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemCategory(
                        name: categories[index],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Productos Detacados',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Ver Todos',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 77, 77, 77),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.35,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ItemProduct(),
                      ItemProduct(),
                      ItemProduct(),
                      ItemProduct(),
                      ItemProduct(),
                      ItemProduct(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
