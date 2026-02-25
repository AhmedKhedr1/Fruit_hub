import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/Custom_AppBar.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BuildAppBar(context, title: 'حساب جديد', IsVisiable: true),
      body: RegisterViewBody(),
    );
  }
}
