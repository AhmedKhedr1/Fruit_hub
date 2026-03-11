import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/active_and_inactive_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigationBarEntity.activeimage,
            title: bottomNavigationBarEntity.title,
          )
        : inActiveItem(image: bottomNavigationBarEntity.inactiveimage);
  }
}
