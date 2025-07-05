import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';
import 'package:fruit_hub/Core/widgets/Custom_Button.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Donot_Have_Account.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/Or_widget.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/SocialLoginButton.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            ),
            SizedBox(
              height: 18,
            ),
            CustomTextFormField(
              hint: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye_rounded,
                color: Color(0xffC9CECF),
              ),
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
              onpressed: () {},
            ),
            SizedBox(
              height: 34,
            ),
            DonotHaveAccount(),
            SizedBox(
              height: 34,
            ),
            OrWidget(),
            SizedBox(
              height: 32,
            ),
            SocialLoginButton(
                imagePath: Assets.googleicon, hintText: 'تسجيل بواسطة جوجل'),
            SizedBox(
              height: 18,
            ),
            SocialLoginButton(
                imagePath: Assets.appleicon, hintText: 'تسجيل بواسطة أبل'),
            SizedBox(
              height: 18,
            ),
            SocialLoginButton(
                imagePath: Assets.Facebookicon, hintText: 'تسجيل بواسطة فيسبوك')
          ],
        ),
      ),
    );
  }
}
