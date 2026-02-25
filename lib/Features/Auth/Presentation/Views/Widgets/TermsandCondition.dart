import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/App_colors.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Auth/Presentation/Views/Widgets/CustomCheckBox.dart';

class Termsandcondition extends StatefulWidget {
  const Termsandcondition({super.key});

  @override
  State<Termsandcondition> createState() => _TermsandconditionState();
}

class _TermsandconditionState extends State<Termsandcondition> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Customcheckbox(
          isChecked: isTermsAccepted,
          onTap: () {
            setState(() {
              isTermsAccepted = !isTermsAccepted;
            });
          },
        ),
        SizedBox(
          width: 18,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - (16 * 2) - 48,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyless.semiBold13.copyWith(
                    color: Color(0xff616A6B),
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: TextStyless.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
