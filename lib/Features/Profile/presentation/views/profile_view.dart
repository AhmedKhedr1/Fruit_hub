import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/logout_button.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/profile_view_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          S.current.account,
          style: TextStyless.bold19.copyWith(color: Color(0xff0C0D0D)),
        ),
      ),
      body: ProfileViewBody(),
      bottomNavigationBar: LogoutButton(
        onTap: () {},
      ),
    );
  }
}
