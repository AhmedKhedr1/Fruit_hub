import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({super.key, required this.onPressed});
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      width: 120,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Color(0xffFFFFFF),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            padding: EdgeInsets.all(3),
            side: BorderSide.none),
        onPressed: onPressed,
        child: Text(
          'تسوق الان',
          style: TextStyless.bold13.copyWith(color: Color(0xff1B5E37)),
        ),
      ),
    );
  }
}
