import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Profile/presentation/manager/cubit/sign_out_cubit.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/dialog_button.dart';
import 'package:go_router/go_router.dart';

Future<dynamic> showLogoutDialog(BuildContext context) {
  final signOutCubit = context.read<SignOutCubit>();

  return showDialog(
    context: context,
    // barrierDismissible: false,
    builder: (context) {
      return Dialog(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          width: double.infinity,
          height: 171,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'هل ترغب في تسجيل الخروج ؟',
                style: TextStyless.bold16,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  DialogButton(
                      text: 'تسجيل الخروج',
                      onTap: () {
                        signOutCubit.signOut();
                      },
                      backgroundColor: AppColors.primaryColor,
                      textColor: Colors.white),
                  SizedBox(
                    width: 8,
                  ),
                  DialogButton(
                    text: 'الغاء',
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    backgroundColor: Colors.white,
                    textColor: AppColors.primaryColor,
                    borderColor: AppColors.primaryColor,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
