// To parse required this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
   required this.products,
  });

  List<Product> products;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Product {
  Product({
    required this.id,
    required this.name,
    required this.title,
    required this.categoryId,

    required this.price,
    required this.discount,

    required this.inStock,
    required this.avatar,
    required this.priceFinal,
    required this.priceFinalText,
  });

  int? id;
  String? name;
  String? title;
  int? categoryId;
  int? price;
  int? discount;
  int? inStock;
  String? avatar;
  double? priceFinal;
  String? priceFinalText;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    title: json["title"],
    categoryId: json["category_id"],

    price: json["price"],
    discount: json["discount"],
    inStock: json["in_stock"],
    avatar: json["avatar"],
    priceFinal: json["price_final"].toDouble(),
    priceFinalText: json["price_final_text"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "title": title,
    "category_id": categoryId,

    "price": price,
    "discount": discount,
    "in_stock": inStock,
    "avatar": avatar,
    "price_final": priceFinal,
    "price_final_text": priceFinalText,
  };
}



