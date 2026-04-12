import 'package:fruit_hub/Core/entities/review_entity.dart';

class ProductEntitey {
  final String? name, code, description;
  String? imageUrl;
  final num price;
  final bool isFeatured;
  final int expirationMonths;
  bool isOrganic = false;
  final int numOfCalories, unitAmount;
  final num avgRating ;
  final num ratingCount = 0;
  final List<ReviewEntity> revews;

  ProductEntitey({
    required this.name,
    required this.code,
    required this.description,
    this.imageUrl,
    required this.price,
    required this.isFeatured,
    required this.isOrganic,
    required this.revews,
    required this.expirationMonths,
    required this.numOfCalories,
    required this.unitAmount,
    required this.avgRating,
    
  });
}
