import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/fruit_item.dart';
import 'package:fruit_hub/Features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:go_router/go_router.dart';

class ProductGridview extends StatelessWidget {
  const ProductGridview({super.key, required this.products});
  final List<ProductEntitey> products;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 163 / 204,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
  GoRouter.of(context).push(
    AppRouter.KProductDetailsview,
    extra: {
      'product': products[index],
      'cubit': context.read<CartCubit>(),
    },
  );
},
          child: FruitItem(
            productEntitey: products[index],
          ),
        );
      },
    );
  }
}
