// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Features/Profile/domain/entities/profile_option_entitey.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/profile_option_item.dart';

class ProfileOptionList extends StatelessWidget {
  ProfileOptionList({super.key});
  List<ProfileOptionEntitey> options = [
    ProfileOptionEntitey(
        title: 'الملف الشخصي',
        leading: Assets.user_green_icon,
        trailling: Assets.arrowright,
        onTap: () {}),
    ProfileOptionEntitey(
        title: ' طلباتي',
        leading: Assets.payment,
        trailling: Assets.arrowright,
        onTap: () {}),
    ProfileOptionEntitey(
        title: 'المدفوعات',
        leading: Assets.empty_wallet,
        trailling: Assets.arrowright,
        onTap: () {}),
    ProfileOptionEntitey(
        title: 'المفضلة',
        leading: Assets.favourite,
        trailling: Assets.arrowright,
        onTap: () {}),
    ProfileOptionEntitey(
        title: 'اللغة',
        leading: Assets.global,
        trailling: Assets.arrowright,
        onTap: () {})
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        options.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: ProfileOptionItem(
              title: options[index].title,
              leading: options[index].leading,
              trailling: options[index].trailling,
              onTap: options[index].onTap,
            ),
          );
        },
      ),
    );
  }
}
