
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';

class PasswordField extends StatefulWidget {
  PasswordField({
    super.key,
    required this.onSaved,
  });
  void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        icon: Icon(
          obscureText
              ? Icons.remove_red_eye_rounded
              : Icons.visibility_off_rounded,
          color: Color(0xffC9CECF),
        ),
      ),
      hint: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      validatormessage: 'كلمة المرور مطلوبة',
      onSaved: widget.onSaved,
    );
  }
}
