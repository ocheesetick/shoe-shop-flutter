import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_shop/models/cart.dart';
import 'package:shoe_shop/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(dividerTheme:  const DividerThemeData(color: Colors.transparent)),
          home: const IntroPage(),
        ),
    );
  }
}