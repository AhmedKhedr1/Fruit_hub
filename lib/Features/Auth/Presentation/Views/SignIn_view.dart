import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/helper_Funcations/Buil_error.dart';
import 'package:fruit_hub/Core/services/Getit__Services.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/widgets/Custom_AppBar.dart';
import 'package:fruit_hub/Features/Auth/Domain/Repos/Auth_Repo.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Cubits/SignIn_cubit/sign_in_cubit.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/SignIn_view_body.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: BuildAppBar(context, title: 'تسجيل دخول', IsVisiable: false),
        body: SigninViewBodyBlocConsumer(),
      ),
    );
  }
}

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          GoRouter.of(context).go(AppRouter.KHomview);
        } else if (state is SignInFailure) {
          ErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignInLoading ? true : false,
            child: SignInViewBody());
      },
    );
  }
}
