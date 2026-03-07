import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Core/widgets/password_field.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Have_And_Donot_Have_Account.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Or_widget.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/SocialLoginButton.dart';
import 'package:fruit_hub/Features/Auth/Presentation/cubits/Signin_cubit/signin_cubit.dart';
import 'package:go_router/go_router.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 28,
              ),
              CustomTextFormField(
                hint: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
                validatormessage: 'يرجى إدخال بريد إلكتروني صحيح',
                onSaved: (value) {
                  email = value!;
                },
              ),
              SizedBox(
                height: 18,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyless.semiBold13
                        .copyWith(color: AppColors.lightPrimaryColor),
                  )
                ],
              ),
              SizedBox(
                height: 34,
              ),
              CustomButton(
                title: 'تسجيل دخول',
                onpressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    context
                        .read<SigninCubit>()
                        .signinwithEmailAndPassword(email, password);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              SizedBox(
                height: 34,
              ),
              HaveAndDonotHaveAccount(
                P1OfText: ' لا تمتلك حساب؟',
                p2OfText: ' قم بانشاء حساب ',
                onTap: () {
                  GoRouter.of(context).push(AppRouter.KRegisterview);
                },
              ),
              SizedBox(
                height: 34,
              ),
              OrWidget(),
              SizedBox(
                height: 32,
              ),
              SocialLoginButton(
                  onTap: () {
                    context.read<SigninCubit>().signInWithGoogle();
                  },
                  imagePath: Assets.googleicon,
                  hintText: 'تسجيل بواسطة جوجل'),
              SizedBox(
                height: 18,
              ),
              SocialLoginButton(
                  imagePath: Assets.appleicon, hintText: 'تسجيل بواسطة أبل'),
              SizedBox(
                height: 18,
              ),
              SocialLoginButton(
                  imagePath: Assets.Facebookicon,
                  hintText: 'تسجيل بواسطة فيسبوك')
            ],
          ),
        ),
      ),
    );
  }
}
