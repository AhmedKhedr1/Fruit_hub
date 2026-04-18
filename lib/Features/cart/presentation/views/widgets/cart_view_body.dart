import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/Features/cart/presentation/cubits/cart_items_cubit/cart_items_cubit.dart';
import 'package:fruit_hub/Features/cart/presentation/views/widgets/cart_header.dart';
import 'package:fruit_hub/Features/cart/presentation/views/widgets/cart_item_list.dart';
import 'package:go_router/go_router.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CartHeader(),
              ],
            ),
          ),
          CartItemList(
            cartItems: context.watch<CartCubit>().cartEntitey.cartItems,
          )
        ],
      ),
      bottomNavigationBar: BlocBuilder<CartItemsCubit, CartItemsState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: CustomButton(
                title:
                    'الدفع ${context.watch<CartCubit>().cartEntitey.calculateTotalPrice()} جنيه',
                onpressed: () {
                  GoRouter.of(context).push(AppRouter.KCheckoutview);
                }),
          );
        },
      ),
    );
  }
}
