import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.suffixIcon,
      required this.hint,
      required this.keyboardType});
  final String hint;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
