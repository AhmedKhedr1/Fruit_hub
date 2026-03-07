import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.suffixIcon,
      required this.hint,
      required this.keyboardType,
      required this.validatormessage,
      required this.onSaved,
      this.obscureText = false});
  final String hint, validatormessage;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatormessage;
        }
        return null;
      },
      obscureText: obscureText,
      onSaved: onSaved,
      maxLines: 1,
      style: TextStyless.semiBold16,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: Color(0xffF9FAFA),
          hintText: hint,
          hintStyle: TextStyless.bold13.copyWith(color: Color(0xff949D9E)),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder()),
    );
  }

  OutlineInputBorder BuildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(width: 1, color: Color(0xffE6E9EA)));
  }
}
