import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/quantity_button.dart';
import 'package:fruit_hub/Features/cart/domain/entities/cart_item_entitey.dart';
import 'package:fruit_hub/Features/cart/presentation/cubits/cart_items_cubit/cart_items_cubit.dart';

class QuantityCounter extends StatelessWidget {
  const QuantityCounter({super.key, required this.cartItemEntitey});
  final CartItemEntitey cartItemEntitey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        QuantityButton(
          color: AppColors.primaryColor,
          icon: Assets.plusicon,
          onTap: () {
            cartItemEntitey.increasCount();
            context.read<CartItemsCubit>().cartItemUpdated(cartItemEntitey);
          },
        ),
        SizedBox(width: 10),
        Text(
          cartItemEntitey.count.toString(),
          style: TextStyless.bold16.copyWith(
            color: Color(0xff06140C),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        QuantityButton(
          color: Color(0xffF1F1F5),
          icon: Assets.minusicon,
          onTap: () {
            cartItemEntitey.decreasCount();
            context.read<CartItemsCubit>().cartItemUpdated(cartItemEntitey);
          },
        ),
      ],
    );
  }
}
