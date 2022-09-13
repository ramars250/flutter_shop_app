import 'package:flutter/foundation.dart';

class Product {
  //bool前面不加final是因為該屬性可以進行更改
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  //({})表示設置為命名函數，因上方有設置final，所以命名函數時前方需要加上required，bool指定預設值為false
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
