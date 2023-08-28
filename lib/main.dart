import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/screens/product_details_screen.dart';
import './screens/product_overview_screen.dart';
import './providers/product_provider.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext ctx) =>
        Products(),
      child: MaterialApp(
        title: 'ShopApp',
        theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: 'OpenSans',
        ),
        home: const ProductOverviewScreen(),
        routes: {ProductDetailScreen.routeName: (ctx) => ProductDetailScreen()},
      ),
    );
  }
}
