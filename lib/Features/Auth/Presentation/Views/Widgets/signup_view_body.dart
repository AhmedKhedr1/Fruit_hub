import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/widgets/build_error_bar.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Core/widgets/password_field.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Have_And_Donot_Have_Account.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/TermsandCondition.dart';
import 'package:fruit_hub/Features/Auth/Presentation/cubits/Signup_cubit/signup_cubit.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String username, email, password;
  late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          autovalidateMode: autovalidateMode,
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                hint: 'الاسم كامل',
                keyboardType: TextInputType.name,
                validatormessage: 'الاسم الكامل مطلوب',
                onSaved: (value) {
                  username = value!;
                },
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hint: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
                validatormessage: 'البريد الإلكتروني مطلوب',
                onSaved: (value1) {
                  email = value1!;
                },
              ),
              SizedBox(
                height: 16,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(
                height: 18,
              ),
              Termsandcondition(
                onChanged: (bool value) {
                  isTermsAccepted = value;
                },
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                title: 'إنشاء حساب جديد',
                onpressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    if (isTermsAccepted) {
                      context
                          .read<SignupCubit>()
                          .CreateUserWithEmailAndPassword(
                              email, password, username);
                    } else {
                      ShowBar(
                        context,
                        S.current.acceptTermsError,
                      );
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              SizedBox(
                height: 28,
              ),
              HaveAndDonotHaveAccount(
                P1OfText: 'تمتلك حساب بالفعل؟ ',
                p2OfText: ' تسجيل دخول',
                onTap: () {
                  GoRouter.of(context).pop();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
