import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 24,
        backgroundColor: Color(0xffEEF8ED),
        child: Image.asset(Assets.notificationicon));
  }
}
