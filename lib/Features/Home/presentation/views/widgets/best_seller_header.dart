import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:go_router/go_router.dart';

class BestSellerHeader extends StatelessWidget {
  const BestSellerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.KBestsellingview,
          extra: {
            'cubit': context.read<CartCubit>(),
          },
        );
      },
      child: Row(
        children: [
          Text(
            'الأكثر مبيعًا',
            style: TextStyless.bold16.copyWith(color: Color(0xff0C0D0D)),
          ),
          Spacer(),
          Text(
            'المزيد',
            style: TextStyless.regular16.copyWith(color: Color(0xff949D9E)),
          )
        ],
      ),
    );
  }
}
