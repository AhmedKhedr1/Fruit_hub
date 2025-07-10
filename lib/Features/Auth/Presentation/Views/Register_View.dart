import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/services/Getit__Services.dart';
import 'package:fruit_hub/Core/widgets/Custom_AppBar.dart';
import 'package:fruit_hub/Features/Auth/Domain/Repos/Auth_Repo.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Cubits/Register_cubit/register_cubit.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/RegisterViewBlocConsumer.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: BuildAppBar(context, title: 'حساب جديد', IsVisiable: true),
        body: RegisterViewBlocConsumer(),
      ),
    );
  }
}
