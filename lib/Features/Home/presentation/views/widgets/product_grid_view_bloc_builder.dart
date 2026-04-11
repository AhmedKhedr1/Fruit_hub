import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/Core/helper/get_dummy_product.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/product_grid_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductGridViewBlocBuilder extends StatelessWidget {
  const ProductGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return ProductGridview(
            products: state.products,
          );
        } else if (state is ProductsFailure) {
          return Text(state.errorMessage);
        } else {
          return Skeletonizer.sliver(
              enabled: true,
              child: ProductGridview(products: getdummyproducts()));
        }
      },
    );
  }
}
