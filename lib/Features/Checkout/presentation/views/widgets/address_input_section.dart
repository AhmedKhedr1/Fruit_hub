import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/Core/widgets/CustomTextFormField.dart';
import 'package:fruit_hub/Features/Checkout/domain/entites/order_entity.dart';
import 'package:fruit_hub/generated/l10n.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection(
      {super.key, required this.formkey, required this.valueListenable});
  final GlobalKey<FormState> formkey;
  final ValueListenable<AutovalidateMode> valueListenable;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AutovalidateMode>(
        valueListenable: valueListenable,
        builder: (context, value, child) {
          return Form(
            autovalidateMode: value,
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  hint: 'الاسم كامل',
                  keyboardType: TextInputType.text,
                  validatormessage: S.current.fullNameRequired,
                  onSaved: (value) {
                    context.read<OrderEntity>().shippingAddressEntity!.name =
                        value!;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hint: 'البريد الإلكتروني',
                  keyboardType: TextInputType.text,
                  validatormessage: S.current.emailRequired,
                  onSaved: (value) {
                    context.read<OrderEntity>().shippingAddressEntity!.email =
                        value!;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hint: 'العنوان',
                  keyboardType: TextInputType.text,
                  validatormessage: S.current.addressRequired,
                  onSaved: (value) {
                    context.read<OrderEntity>().shippingAddressEntity!.address =
                        value!;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hint: 'المدينه',
                  keyboardType: TextInputType.text,
                  validatormessage: S.current.cityRequired,
                  onSaved: (value) {
                    context.read<OrderEntity>().shippingAddressEntity!.city =
                        value!;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hint: 'رقم الطابق , رقم الشقه ..',
                  keyboardType: TextInputType.text,
                  validatormessage: S.current.floorRequired,
                  onSaved: (value) {
                    context
                        .read<OrderEntity>()
                        .shippingAddressEntity!
                        .addressDetails = value!;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  hint: 'رقم الهاتف',
                  keyboardType: TextInputType.text,
                  validatormessage: S.current.phoneRequired,
                  onSaved: (value) {
                    context
                        .read<OrderEntity>()
                        .shippingAddressEntity!
                        .phoneNum = value!;
                  },
                )
              ],
            ),
          );
        });
  }
}
