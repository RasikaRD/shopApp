import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(this.id, this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          backgroundColor:const Color.fromARGB(255, 63, 63, 63),
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
            color:const Color.fromARGB(255, 228, 100, 117),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
        child: Image.network(imageUrl),
      ),
    );
  }
}
