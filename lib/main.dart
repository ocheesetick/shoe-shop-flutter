import 'package:flutter/material.dart';
import 'package:shoe_shop/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(dividerTheme:  const DividerThemeData(color: Colors.transparent)),
        home: const IntroPage(),
    );
  }
}