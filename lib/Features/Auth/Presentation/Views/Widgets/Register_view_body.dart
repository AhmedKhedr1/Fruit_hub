import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/utils/App_Router.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Cubits/Register_cubit/register_cubit.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Have_And_Donot_Have_Account.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/TermsandCondition.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final GlobalKey<FormState>formkey=GlobalKey<FormState>();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  late String UserName,email,password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                onSaved: (p0) {
                  UserName=p0!;
                },
                  hint: 'الاسم كامل', keyboardType: TextInputType.name),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (p0) {
                  email=p0!;
                },
                  hint: 'البريد الإلكتروني',
                  keyboardType: TextInputType.emailAddress),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (p0) {
                  password=p0!;
                },
                  suffixIcon: Icon(
                    Icons.remove_red_eye_rounded,
                    color: Color(0xffC9CECF),
                  ),
                  hint: 'كلمة المرور',
                  keyboardType: TextInputType.visiblePassword),
              SizedBox(
                height: 18,
              ),
              Termsandcondition(),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                title: 'إنشاء حساب جديد',
                onpressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    context.read<RegisterCubit>().CreateUserWithEmailAndPassword(email, password, UserName);
                    // Add your registration logic here
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
