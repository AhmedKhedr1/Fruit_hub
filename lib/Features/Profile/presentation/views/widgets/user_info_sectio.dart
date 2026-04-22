import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 108,
                  height: 108,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: Image.asset(
                      Assets.userimage,
                      width: 86,
                      height: 86,
                    ),
                  ),
                ),
                Positioned(
                    right: 38, bottom: -6, child: Image.asset(Assets.camera))
              ],
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'أحمد ياسر',
                  style: TextStyless.bold16.copyWith(color: Color(0xff131F46)),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'mail@mail.com',
                  style:
                      TextStyless.regular16.copyWith(color: Color(0xff888FA0)),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
