import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Home/presentation/views/widgets/notification_card.dart';

class NotificationsViewBody extends StatefulWidget {
  const NotificationsViewBody({super.key});

  @override
  State<NotificationsViewBody> createState() => _NotificationsViewBodyState();
}

class _NotificationsViewBodyState extends State<NotificationsViewBody> {
  @override
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: List.generate(
              4,
              (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: NotificationCard(
                    
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
