import 'package:flutter/material.dart';
import 'package:shrine/login.dart';
import 'package:shrine/model/login.dart';

enum Category {
  all,
  accessories,
  clothing,
  home,
  logout,
}

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.isFeatured,
    required this.name,
    required this.price,
  });

  final Category category;
  final int id;
  final bool isFeatured;
  final String name;
  final int price;

  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => "$name (id=$id)";
}

void handleCategorySelection(Category category, BuildContext context) {
  if (category == Category.logout) {
    // Navigasi ke halaman login saat opsi logout dipilih
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (Route<dynamic> route) => false,
    );
  }
}
