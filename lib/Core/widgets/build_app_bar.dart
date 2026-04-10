import 'package:flutter/material.dart';

import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/notification_widget.dart';
import 'package:go_router/go_router.dart';

AppBar buildAppBar(BuildContext context,
    {required String title, required bool leading}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: leading
        ? IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new))
        : SizedBox.shrink(),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyless.bold19.copyWith(color: Color(0xff0C0D0D)),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      )
    ],
  );
}
