import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/Core/repos/product_repo.dart';
import 'package:fruit_hub/Core/services/get_it_services.dart';
import 'package:fruit_hub/Core/widgets/build_app_bar.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        context,
        title: 'الأكثر مبيعًا',
        leading: true, notification: true,
      ),
      body: BlocProvider(
        create: (context) => ProductsCubit(getIt<ProductRepo>()),
        child: BestSellingViewBody(),
      ),
    );
  }
}
