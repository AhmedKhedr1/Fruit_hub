import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  QuantityButton({
    super.key,
    required this.color,
    required this.icon,
    required this.onTap,
  });
  final String icon;
  final Color color;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(22)),
        child: Image.asset(icon),
      ),
    );
  }
}
