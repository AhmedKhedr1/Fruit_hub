import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/widgets/build_error_bar.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/signin_view_body.dart';
import 'package:fruit_hub/Features/Auth/Presentation/cubits/Signin_cubit/signin_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigninViewBodyBlocConsumer extends StatelessWidget {
  const SigninViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSucces) {
          GoRouter.of(context).go(AppRouter.KMainview);
        } else if (state is SigninFailure) {
          BuildErrorBar(context, state.message, Colors.red);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is Signinloading ? true : false,
            child: SigninViewBody());
      },
    );
  }
}
