import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Home/presentation/views/home_view.dart';
import 'package:fruit_hub/Features/Home/presentation/views/products_view.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/custom_bottom_naviagtion_bar.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/profile_view.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNaviagtionBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
