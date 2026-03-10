import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/featured_item.dart';

class FeatuerdList extends StatelessWidget {
  const FeatuerdList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) {
            return FeaturedItem();
          },
        ),
      ),
    );
  }
}
