import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/navigation_bar_item.dart';

class CustomBottomNaviagtionBar extends StatelessWidget {
  const CustomBottomNaviagtionBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: Color(0x19000000),
                blurRadius: 20,
                spreadRadius: 6,
                offset: Offset(0, -6))
          ]),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          children: bottomNavigationBarItems.asMap().entries.map(
            (e) {
              var index = e.key;
              var entity = e.value;
              return Expanded(
                child: GestureDetector(
                  onTap: () => onItemSelected(index),
                  child: NavigationBarItem(
                      isSelected: selectedIndex == index,
                      bottomNavigationBarEntity: entity),
                ),
              );
            },
          ).toList()),
    );
  }
}
