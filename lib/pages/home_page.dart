import 'package:flutter/material.dart';
import 'package:shoe_shop/components/bottom_nav_bar.dart';
import 'package:shoe_shop/pages/cart_page.dart';
import 'package:shoe_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Will update the selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of pages
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.black,
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // Logo
                  DrawerHeader(
                      child: Image.asset(
                          "lib/images/nike-logo.png",
                          color: Colors.white
                      )
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.grey[800],
                    ),
                  ),

                  // Other pages
                  // Home
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                        leading: Icon(Icons.home, color: Colors.white),
                        title: Text(
                            "Home",
                            style: TextStyle(color: Colors.white)
                        )
                    ),
                  ),

                  // About
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                        leading: Icon(Icons.info, color: Colors.white),
                        title: Text(
                            "About",
                            style: TextStyle(color: Colors.white)
                        )
                    ),
                  ),
                ],
              ),

              // Logout
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title: Text(
                        "Logout",
                        style: TextStyle(color: Colors.white)
                    )
                ),
              ),
            ]
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}