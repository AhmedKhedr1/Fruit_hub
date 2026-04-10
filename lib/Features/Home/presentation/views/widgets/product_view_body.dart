import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/search_text_field.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/best_seller_header.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/fruit_item_gridview.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                SearchTextField(),
                SizedBox(
                  height: 24,
                ),
                BestSellerHeader(),
                SizedBox(
                  height: 8,
                )
              ],
            ),
          ),
          FruitItemGridview()
        ],
      ),
    );
  }
}
