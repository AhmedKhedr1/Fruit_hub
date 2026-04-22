import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class ProfileOptionItem extends StatelessWidget {
  const ProfileOptionItem({
    super.key,
    required this.title,
    required this.leading,
    required this.trailling,
    required this.onTap
  });
  final String title, leading, trailling;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(leading),
              SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: TextStyless.semiBold16.copyWith(color: Color(0xff949D9E)),
              ),
              Spacer(),
              Image.asset(trailling)
            ],
          ),
          Divider(
            color: Color(0xffF2F3F3),
            thickness: 1,
          )
        ],
      ),
    );
  }
}
