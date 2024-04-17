import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search bar
        Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8)
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Search shoes',
                    style: TextStyle(color: Colors.grey)
                ),
                Icon(
                    Icons.search,
                    color: Colors.grey
                ),

              ],
            )
        )

        // Hot picks
      ],
    );
  }
}