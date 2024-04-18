import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_shop/components/shoe_tile.dart';
import 'package:shoe_shop/models/cart.dart';
import 'package:shoe_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Successfully added!"),
          content: Text("Check you cart"),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
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
            ),

            // Hot picks
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Hot Picks🔥',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue
                      )
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // list of shoes for sale
            Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];
                      return ShoeTile(
                          shoe:shoe,
                          onTap: () => addShoeToCart(shoe) ,
                      );
                    }
                )
            ),

            const Padding(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Divider(
                thickness: 0.7,
                color: Colors.grey,
              ),
            )
          ],
        )
    );
  }
}