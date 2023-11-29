import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 234, 234, 234),
          borderRadius: BorderRadius.circular(20),
        ),
        height: MediaQuery.sizeOf(context).height * 0.35,
        width: MediaQuery.sizeOf(context).height * 0.24,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/img/cold_coffee.webp',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Capuccino Frio con avellanas',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Delicioso capuccino de 5oz, pensado especialmente para compartir con tu pareja.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 119, 119, 119),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: const Border(
                        bottom: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                      child: Text(
                        '\$3500',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 81, 49, 37)),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.brown,
                    size: 35,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
