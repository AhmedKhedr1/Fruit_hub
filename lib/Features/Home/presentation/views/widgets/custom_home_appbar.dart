import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/notification_widget.dart';

class CustomHomeAppbar extends StatelessWidget {
  const CustomHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 60),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(Assets.userimage),
        title: Text(
          'صباح الخير !..',
          style: TextStyless.regular16.copyWith(color: Color(0xff949D9E)),
        ),
        subtitle: Text(
          'أحمد مصطفي',
          style: TextStyless.bold16.copyWith(color: Color(0xff0C0D0D)),
        ),
        trailing: NotificationWidget(),
      ),
    );
  }
}
