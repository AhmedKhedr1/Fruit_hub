import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';

class Customcheckbox extends StatelessWidget {
  const Customcheckbox(
      {super.key, required this.isChecked, required this.onTap});
  final bool isChecked;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
                color: isChecked ? Colors.transparent : Color(0xffDDDFDF),
                width: 1.5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: isChecked
              ? SvgPicture.asset(Assets.checkicon)
              : SizedBox.shrink(),
        ),
      ),
    );
  }
}
