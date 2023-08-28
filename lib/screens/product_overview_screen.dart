import 'package:flutter/material.dart';
import 'package:shop_app/widgets/product_grid_view.dart';

class ProductOverviewScreen extends StatelessWidget {

  const ProductOverviewScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upcoming Products'),
      ),
      body: const ProductGrideView(),
    );
  }
}

