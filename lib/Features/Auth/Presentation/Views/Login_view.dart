import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/Custom_AppBar.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BuildAppBar(context, title: 'تسجيل دخول', IsVisiable: false),
      body: LoginViewBody(),
    );
  }
}
