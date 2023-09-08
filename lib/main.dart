import 'package:coffee_shop/constants/color_constants.dart';
import 'package:coffee_shop/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorConstants.mainColor),
        fontFamily: 'Rosarivo',
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
