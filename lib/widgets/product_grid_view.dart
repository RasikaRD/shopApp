import 'package:flutter/material.dart';
import 'package:shop_app/providers/product_provider.dart';
import 'package:shop_app/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductGrideView extends StatelessWidget {
  const ProductGrideView({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2 / 3,
      ),
      itemCount: products.length,
      itemBuilder: (ctx, i) =>ChangeNotifierProvider(
        create: (BuildContext context)=>products[i],
        child: ProductItem(
        // products[i].id,
        // products[i].title,
        // products[i].imageUrl,
      ),
      )
    );
  }
}
