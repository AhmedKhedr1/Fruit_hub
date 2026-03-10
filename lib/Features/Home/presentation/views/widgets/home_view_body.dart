import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/search_text_field.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/best_seller_header.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/custom_home_appbar.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/featuerd_list.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/fruit_item_gridview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: [
              CustomHomeAppbar(),
              SizedBox(
                height: 16,
              ),
              SearchTextField(),
              SizedBox(
                height: 12,
              ),
              FeatuerdList(),
              SizedBox(
                height: 12,
              ),
              BestSellerHeader(),
              SizedBox(
                height: 8,
              ),
            ],
          )),
          FruitItemGridview()
        ],
      ),
    );
  }
}
