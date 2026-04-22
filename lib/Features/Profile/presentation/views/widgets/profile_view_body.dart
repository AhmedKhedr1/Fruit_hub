import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/profile_option_item.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/profile_option_list.dart';
import 'package:fruit_hub/Features/Profile/presentation/views/widgets/user_info_sectio.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserInfoSection(),
          SizedBox(
            height: 16,
          ),
          Text(
            'عام',
            style: TextStyless.semiBold16,
          ),
          SizedBox(
            height: 22,
          ),
          ProfileOptionList(),
          SizedBox(
            height: 24,
          ),
          Text(
            'المساعده',
            style: TextStyless.semiBold16,
          ),
          SizedBox(
            height: 24,
          ),
          ProfileOptionItem(
            title: 'من نحن',
            leading: Assets.aboutUsIcon,
            trailling: Assets.arrowright, onTap: () {  },
          )
        ],
      ),
    );
  }
}
