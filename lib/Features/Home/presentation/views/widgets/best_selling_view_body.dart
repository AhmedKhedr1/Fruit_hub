import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/product_grid_view_bloc_builder.dart';

class BestSellingViewBody extends StatefulWidget {
  const BestSellingViewBody({super.key});

  @override
  State<BestSellingViewBody> createState() => _BestSellingViewBodyState();
}

class _BestSellingViewBodyState extends State<BestSellingViewBody> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                Text(
                  'الأكثر مبيعًا',
                  style: TextStyless.bold16.copyWith(color: Color(0xff0C0D0D)),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          ProductGridViewBlocBuilder()
        ],
      ),
    );
  }
}
