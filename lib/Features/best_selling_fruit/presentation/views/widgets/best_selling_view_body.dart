import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/fruit_item_gridview.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

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
                )
              ],
            ),
          ),
          FruitItemGridview(),
        ],
      ),
    );
  }
}
