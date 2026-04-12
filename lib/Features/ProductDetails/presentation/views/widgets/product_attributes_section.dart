import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Features/ProductDetails/domain/entities/product_aattribute_entitey.dart';

import 'package:fruit_hub/Features/ProductDetails/presentation/views/widgets/product_attribute_card.dart';

class ProductAttributesSection extends StatelessWidget {
  const ProductAttributesSection(
      {super.key,
      required this.isOrganic,
      required this.expirationDate,
      required this.rating,
      required this.calories});
  final bool isOrganic;
  final String expirationDate;
  final num rating, calories;
  @override
  Widget build(BuildContext context) {
    List<ProductAattributeEntitey> attrebuties = [
      ProductAattributeEntitey(
          title: 'عام', subtitle: 'الصلاحيه', icon: Assets.expirationdate),
      if (isOrganic)
        ProductAattributeEntitey(
            title: '100%', subtitle: 'اوجانيك', icon: Assets.organic),
      ProductAattributeEntitey(
          title: '$calories كالوري',
          subtitle: '100 جرام',
          icon: Assets.calories),
      ProductAattributeEntitey(
          title: '$rating ', subtitle: 'Reviews', icon: Assets.staricon),
    ];
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 163 / 80,
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 16),
        itemCount: attrebuties.length,
        itemBuilder: (context, index) {
          return ProductAttributeCard(
            attrebutie: attrebuties[index],
          );
        },
      ),
    );
  }
}
