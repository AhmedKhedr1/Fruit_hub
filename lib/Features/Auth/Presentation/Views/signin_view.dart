import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/services/get_it_services.dart';
import 'package:fruit_hub/Core/widgets/Custom_AppBar.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/siginin_view_body_bloc_consumer.dart';
import 'package:fruit_hub/Features/Auth/Presentation/cubits/Signin_cubit/signin_cubit.dart';
import 'package:fruit_hub/Features/Auth/domain/repos/auth_repo.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: BuildAppBar(context, title: 'تسجيل دخول', IsVisiable: false),
        body: SigninViewBodyBlocConsumer(),
      ),
    );
  }
}
