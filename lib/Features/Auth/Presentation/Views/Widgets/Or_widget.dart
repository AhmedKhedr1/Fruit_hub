import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xffC2C2C2),
            indent: 20,
            endIndent: 10,
          ),
        ),
        Column(
          children: [
            Text('أو',
                style:
                    TextStyless.semiBold16.copyWith(color: Color(0xff0C0D0D))),
          ],
        ),
        Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xffC2C2C2),
            indent: 10,
            endIndent: 20,
          ),
        ),
      ],
    );
  }
}
