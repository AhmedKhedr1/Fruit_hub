import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/cubits/products_cubit/products_cubit.dart';
import 'package:fruit_hub/Core/repos/product_repo/product_repo.dart';
import 'package:fruit_hub/Core/services/get_it_services.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocProvider(
          create: (context) => ProductsCubit(getIt<ProductRepo>()),
          child: HomeViewBody(),
        ));
  }
}
