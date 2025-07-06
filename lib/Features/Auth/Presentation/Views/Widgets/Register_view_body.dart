import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Have_And_Donot_Have_Account.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/TermsandCondition.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
                hint: 'الاسم كامل', keyboardType: TextInputType.name),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
                hint: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
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
              onpressed: () {},
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
    );
  }
}
