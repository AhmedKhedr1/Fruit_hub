import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Core/widgets/Password_filed.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Cubits/SignIn_cubit/sign_in_cubit.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Have_And_Donot_Have_Account.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Or_widget.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/SocialLoginButton.dart';
import 'package:go_router/go_router.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              SizedBox(
                height: 28,
              ),
              CustomTextFormField(
                onSaved: (p0) {
                  email = p0!;
                },
                hint: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 18,
              ),
              Passwordfield(
                onSaved: (p0) {
                  password = p0!;
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
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    context
                        .read<SignInCubit>()
                        .signInWithEmailAndPassword(email, password);
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
                    context.read<SignInCubit>().signInWithGoogle();
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
                  onTap: () {
                    context.read<SignInCubit>().signInWithFacebook();
                  },
                  imagePath: Assets.Facebookicon,
                  hintText: 'تسجيل بواسطة فيسبوك')
            ],
          ),
        ),
      ),
    );
  }
}
