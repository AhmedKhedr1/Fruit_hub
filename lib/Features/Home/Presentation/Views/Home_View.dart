import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Home/Presentation/Views/Widgets/HomeView_Body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomeviewBody(),
    );
  }
}