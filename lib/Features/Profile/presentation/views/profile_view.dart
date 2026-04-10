import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ProfileViewBody(),
    );
  }
}
