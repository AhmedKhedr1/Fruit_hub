import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/widgets/build_error_bar.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/signup_view_body.dart';
import 'package:fruit_hub/Features/Auth/Presentation/cubits/Signup_cubit/signup_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('تم إنشاء الحساب بنجاح'),
            backgroundColor: AppColors.primaryColor,
          ));
          GoRouter.of(context).pop();
        } else if (state is Signupfailure) {
          ShowErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignupLoading ? true : false,
            child: SignupViewBody());
      },
    );
  }
}
