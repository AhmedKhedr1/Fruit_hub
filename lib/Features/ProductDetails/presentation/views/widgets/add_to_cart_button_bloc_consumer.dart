
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/entities/product_entitey.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';

class AddToCartButtonBlocConsumer extends StatelessWidget {
  const AddToCartButtonBlocConsumer({
    super.key,
    required this.product,
  });

  final ProductEntitey product;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartProductAdded) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('تم إضافة المنتج إلى السلة'),
              duration: Duration(seconds: 1),
            ),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: CustomButton(
            title: 'أضف الي السلة',
            onpressed: () {
              context.read<CartCubit>().addProduct(product);
            },
          ),
        );
      },
    );
  }
}
