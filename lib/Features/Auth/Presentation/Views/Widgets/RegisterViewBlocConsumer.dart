import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/helper_Funcations/Buil_error.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Cubits/Register_cubit/register_cubit.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Register_view_body.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterViewBlocConsumer extends StatelessWidget {
  const RegisterViewBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            GoRouter.of(context).go(AppRouter.Kloginview);
          } else if (state is RegisterFailure) {
            ErrorBar(context, state.message);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is Registerloading ? true : false,
              child: RegisterViewBody());
        },
      );
    });
  }
}