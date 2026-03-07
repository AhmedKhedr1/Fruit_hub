import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/services/get_it_services.dart';
import 'package:fruit_hub/Core/widgets/Custom_AppBar.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/signup_view_body_blocConsumer.dart';
import 'package:fruit_hub/Features/Auth/Presentation/cubits/Signup_cubit/signup_cubit.dart';
import 'package:fruit_hub/Features/Auth/domain/repos/auth_repo.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BuildAppBar(context, title: 'حساب جديد', IsVisiable: true),
      body: BlocProvider(
        create: (context) => SignupCubit(getIt<AuthRepo>()),
        child: SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
