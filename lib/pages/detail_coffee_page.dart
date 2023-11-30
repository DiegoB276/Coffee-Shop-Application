import 'package:flutter/material.dart';

class DetailsCoffeePage extends StatefulWidget {
  const DetailsCoffeePage({
    super.key,
    required this.product,
  });

  final Map<String, dynamic>? product;

  @override
  State<DetailsCoffeePage> createState() => _DetailsCoffeePageState();
}

class _DetailsCoffeePageState extends State<DetailsCoffeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.product!['image'],
                  height: 300,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 30,
                  left: 15,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Text(
                  widget.product!['name'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    widget.product!['description'],
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
