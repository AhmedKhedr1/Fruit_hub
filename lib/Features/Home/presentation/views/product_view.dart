import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/build_app_bar.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/product_view_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        context,
        title: S.current.products,
        leading: false,
      ),
      body: ProductViewBody(),
    );
  }
}
