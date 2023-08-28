import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String description;
  final String title;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {required this.id,
      required this.description,
      required this.title,
      required this.imageUrl,
      this.isFavorite = false,
      required this.price});

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
