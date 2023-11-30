import 'package:flutter/material.dart';

class StartOrder extends StatelessWidget {
  const StartOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 60,
          width: MediaQuery.sizeOf(context).width * 0.9,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              'Relaizar Pedido',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
