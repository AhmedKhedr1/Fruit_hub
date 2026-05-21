import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/build_app_bar.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/notifications_view_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context,
          title: S.current.notifications, leading: true, notification: false),
      body: NotificationsViewBody(),
    );
  }
}
