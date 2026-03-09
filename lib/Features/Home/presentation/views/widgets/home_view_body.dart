import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/search_text_field.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/custom_home_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomHomeAppbar(),
              SizedBox(
                height: 16,
              ),
              SearchTextField(),
            ],
          ),
        )),
      ],
    );
  }
}
