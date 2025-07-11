import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.suffixIcon,
      required this.hint,
      required this.keyboardType,
      this.onSaved,this.obscureText=false});
  final String hint;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText ,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'هذا الحقل مطلوب ';
        }
        return null;
      },
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
