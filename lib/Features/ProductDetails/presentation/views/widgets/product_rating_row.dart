import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:go_router/go_router.dart';

class ProductRatingRow extends StatelessWidget {
  const ProductRatingRow(
      {super.key, required this.rating, required this.numofReviews});
  final num rating, numofReviews;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Image.asset(
            Assets.staricon,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            rating.toString(),
            style: TextStyless.semiBold16.copyWith(color: Color(0xff111719)),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            numofReviews.toString(),
            style: TextStyless.regular16.copyWith(color: Color(0xff9796A1)),
          ),
          SizedBox(
            width: 9,
          ),
          GestureDetector(
            onTap: () => GoRouter.of(context).push(AppRouter.reviewsview),
            child: Text(
              'المراجعه',
              style: TextStyless.bold16.copyWith(color: AppColors.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
