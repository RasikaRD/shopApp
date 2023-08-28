import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product_provider.dart';
import './product_overview_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  // const ProductDetailScreen(this.title, this.price,{super.key});
  static const routeName = '/product-details';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(loadedProduct.description),
        )
      ]),
    );
  }
}
