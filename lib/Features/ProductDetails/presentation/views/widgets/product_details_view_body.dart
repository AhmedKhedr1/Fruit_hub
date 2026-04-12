import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Features/ProductDetails/presentation/views/widgets/product_attributes_section.dart';
import 'package:fruit_hub/Features/ProductDetails/presentation/views/widgets/product_details_header.dart';
import 'package:fruit_hub/Features/ProductDetails/presentation/views/widgets/product_info_section.dart';
import 'package:fruit_hub/Features/ProductDetails/presentation/views/widgets/product_rating_row.dart';
import 'package:fruit_hub/Features/ProductDetails/presentation/views/widgets/product_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});
  final ProductEntitey product;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductDetailsHeader(image: product.imageUrl!),
              ProductInfoSection(
                  productName: product.name!,
                  unitAmount: product.unitAmount.toString(),
                  price: product.price.toString()),
              SizedBox(
                height: 4,
              ),
              ProductRatingRow(
                  rating: product.avgRating,
                  numofReviews: product.revews.length),
              SizedBox(
                height: 4,
              ),
              ProductDescription(description: product.description!),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        ProductAttributesSection(
          isOrganic: product.isOrganic,
          expirationDate: product.expirationMonths.toString(),
          calories: product.numOfCalories,
          rating: product.avgRating,
        )
      ],
    );
  }
}
