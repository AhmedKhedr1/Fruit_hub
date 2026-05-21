import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:go_router/go_router.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.Knotificationview);
      },
      child: CircleAvatar(
          radius: 24,
          backgroundColor: Color(0xffEEF8ED),
          child: Image.asset(Assets.notificationicon)),
    );
  }
}
