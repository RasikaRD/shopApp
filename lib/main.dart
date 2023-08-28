import 'package:flutter/material.dart';
import './screens/product_overview_screen.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopApp',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: ProductOverviewScreen()
    );
  }
}
