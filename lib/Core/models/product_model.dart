import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Core/models/review_model.dart';

class ProductModel {
  final String? name, code, description, imageUrl;
  final num price;
  final bool isFeatured;
  final int expirationMonths;
  bool isOrganic = false;
  final int numOfCalories, unitAmount;
  final num avgRating;
  final num ratingCount = 0;
  final List<ReviewModel> reviews;
  final int selleingCount;

  ProductModel({
    required this.name,
    required this.code,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.isFeatured,
    required this.isOrganic,
    required this.expirationMonths,
    required this.numOfCalories,
    required this.unitAmount,
    required this.reviews,
    required this.selleingCount,
    required this.avgRating,
  });

  factory ProductModel.fromjson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      code: json['code'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      price: json['price'],
      isFeatured: json['isFeatured'],
      isOrganic: json['isOrganic'],
      expirationMonths: json['expirationMonths'],
      numOfCalories: json['numOfCalories'],
      unitAmount: json['unitAmount'],
      reviews: (json['reviews'] as List)
          .map((e) => ReviewModel.fromJson(e))
          .toList(),
      selleingCount: json['sellingCount'],
      avgRating: json['avgRating'],
    );
  }

  Map<String, Object?> toJson() {
    return {
      "name": name,
      "code": code,
      "description": description,
      "price": price,
      "isFeatured": isFeatured,
      "expirationMonths": expirationMonths,
      "isOrganic": isOrganic,
      "numOfCalories": numOfCalories,
      "unitAmount": unitAmount,
      'imageUrl': imageUrl,
      'avgRating': avgRating,
      'ratingCount': ratingCount,
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }

  ProductEntitey toEntity() {
    return ProductEntitey(
        name: name,
        code: code,
        description: description,
        imageUrl: imageUrl,
        price: price,
        isFeatured: isFeatured,
        isOrganic: isOrganic,
        expirationMonths: expirationMonths,
        numOfCalories: numOfCalories,
        unitAmount: unitAmount,
        revews: reviews.map((e) => e.toEntity()).toList(),
        avgRating: avgRating);
  }
}
