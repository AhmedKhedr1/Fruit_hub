
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Features/Profile/presentation/manager/cubit/sign_out_cubit.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/logout_button.dart';
import 'package:go_router/go_router.dart';

class SignOutBarBlocConsumer extends StatelessWidget {
  const SignOutBarBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignOutCubit, SignOutState>(
      listener: (context, state) {
        if (state is SignOutSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('تم تسجيل الخروج بنجاح'),
            ),
          );
        } else if (state is SignOutloading) {
          Center(
            child: CircularProgressIndicator(
              color: Colors.green,
            ),
          );
        } else if (state is SignOutFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('فشل في تسجيل الخروج'),
            ),
          );
        }
      },
      builder: (context, state) {
        return LogoutButton(
          onTap: () {
            context.read<SignOutCubit>().signOut();
            GoRouter.of(context).go(AppRouter.Kloginview);
          },
        );
      },
    );
  }
}
