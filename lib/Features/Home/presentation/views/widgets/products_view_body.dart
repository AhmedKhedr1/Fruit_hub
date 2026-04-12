import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/Core/widgets/search_text_field.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/categories_section.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/product_grid_view_bloc_builder.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/best_seller_header.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getBestSelleingProducts();
    super.initState();
  }

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
                  height: 16,
                ),
                CategoriesSection(),
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
          ProductGridViewBlocBuilder()
        ],
      ),
    );
  }
}
