import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.index, required this.title});
  final String index, title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffF2F3F3),
          radius: 12,
          child: Text(index, style: TextStyless.semiBold13),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: TextStyless.semiBold13.copyWith(color: Color(0xffAAAAAA)),
        )
      ],
    );
  }
}
