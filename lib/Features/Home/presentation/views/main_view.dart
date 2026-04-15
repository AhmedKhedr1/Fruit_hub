import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Features/Home/presentation/views/home_view.dart';
import 'package:fruit_hub/Features/Home/presentation/views/products_view.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/custom_bottom_naviagtion_bar.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/main_view_body_bloc_consumer.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/profile_view.dart';
import 'package:fruit_hub/Features/cart/presentation/cubits/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/Features/cart/presentation/views/cart_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeView(),
    ProductsView(),
    CartView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: MainViewBodyBlocConsumer(
            selectedIndex: _selectedIndex, pages: _pages),
        bottomNavigationBar: CustomBottomNaviagtionBar(
          selectedIndex: _selectedIndex,
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
