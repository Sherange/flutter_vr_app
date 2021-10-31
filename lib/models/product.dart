import 'package:flutter/material.dart';
// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.id,
    required this.title,
    required this.price,
    this.rating,
    this.description,
    this.images,
  });

  String id;
  String title;
  String price;
  double? rating;
  String? description;
  String? images;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        rating: json["rating"].toDouble(),
        description: json["description"],
        images: json["images"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "rating": rating,
        "description": description,
        "images": images,
      };
}
