import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';
import 'package:fruit_hub/generated/l10n.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        CustomTextFormField(
          hint: 'الاسم كامل',
          keyboardType: TextInputType.text,
          validatormessage: S.current.fullNameRequired,
          onSaved: (string) {},
        ),
        SizedBox(
          height: 8,
        ),
        CustomTextFormField(
          hint: 'البريد الإلكتروني',
          keyboardType: TextInputType.text,
          validatormessage: S.current.emailRequired,
          onSaved: (string) {},
        ),
        SizedBox(
          height: 8,
        ),
        CustomTextFormField(
          hint: 'العنوان',
          keyboardType: TextInputType.text,
          validatormessage: S.current.addressRequired,
          onSaved: (string) {},
        ),
        SizedBox(
          height: 8,
        ),
        CustomTextFormField(
          hint: 'المدينه',
          keyboardType: TextInputType.text,
          validatormessage: S.current.cityRequired,
          onSaved: (string) {},
        ),
        SizedBox(
          height: 8,
        ),
        CustomTextFormField(
          hint: 'رقم الطابق , رقم الشقه ..',
          keyboardType: TextInputType.text,
          validatormessage: S.current.floorRequired,
          onSaved: (string) {},
        ),
        SizedBox(
          height: 8,
        ),
        CustomTextFormField(
          hint: 'رقم الهاتف',
          keyboardType: TextInputType.text,
          validatormessage: S.current.phoneRequired,
          onSaved: (string) {},
        )
      ],
    );
  }
}
