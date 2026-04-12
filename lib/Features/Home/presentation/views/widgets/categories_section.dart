import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/ProductDetails/domain/entities/category_entity.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/products_header.dart';

class CategoriesSection extends StatelessWidget {
  CategoriesSection({super.key});

  final List<CategoryEntity> categories = [
    CategoryEntity(name: 'بطيخ', image: Assets.watermelon),
    CategoryEntity(name: 'افوكادو', image: Assets.avocado),
    CategoryEntity(name: 'فرولة', image: Assets.strawberry),
    CategoryEntity(name: 'موز', image: Assets.banana),
    CategoryEntity(name: 'أناناس', image: Assets.pineappleimage),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductsHeader(),
        SizedBox(
          height: 8,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                categories.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(4.5),
                      child: CategoryCard(
                        categoryEntity: categories[index],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryEntity,
  });
  final CategoryEntity categoryEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 67,
          width: 67,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
              color: Color(0xffF3F5F7),
              borderRadius: BorderRadius.circular(40)),
          child: Image.asset(categoryEntity.image),
        ),
        Text(
          categoryEntity.name,
          style: TextStyless.semiBold13.copyWith(color: Color(0xff0C0D0D)),
        )
      ],
    );
  }
}
