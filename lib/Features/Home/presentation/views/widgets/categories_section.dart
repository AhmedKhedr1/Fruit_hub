import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/products_header.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductsHeader(),
        SizedBox(
          height: 8,
        ),
        
      ],
    );
  }
}
