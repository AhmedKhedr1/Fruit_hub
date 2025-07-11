
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';

class Passwordfield extends StatefulWidget {
  Passwordfield({super.key, this.onSaved});
  Function(String?)? onSaved;

  @override
  State<Passwordfield> createState() => _PasswordfieldState();
}

class _PasswordfieldState extends State<Passwordfield> {
  bool obscureText=true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
        onSaved: widget.onSaved,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText=!obscureText;
            });
          },
          icon:obscureText? Icon(
            Icons.remove_red_eye_rounded,
            color: Color(0xffC9CECF),
          ):Icon(Icons.visibility_off,color:  Color(0xffC9CECF),),
        ),
        hint: 'كلمة المرور',
        keyboardType: TextInputType.visiblePassword);
  }
}
