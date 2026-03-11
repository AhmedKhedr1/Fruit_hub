import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class inActiveItem extends StatelessWidget {
  const inActiveItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      width: 24,
      height: 24,
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.title});
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xff1B5E37),
              radius: 15,
              child: SvgPicture.asset(image),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: TextStyless.semiBold11.copyWith(color: Color(0xff1B5E37)),
            )
          ],
        ),
      ),
    );
  }
}
