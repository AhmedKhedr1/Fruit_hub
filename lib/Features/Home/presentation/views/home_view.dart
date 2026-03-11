import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/custom_bottom_naviagtion_bar.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomeViewBody(),
      bottomNavigationBar: CustomBottomNaviagtionBar(),
    );
  }
}
