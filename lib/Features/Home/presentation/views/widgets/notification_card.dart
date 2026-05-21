// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Assets.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

class NotificationCard extends StatelessWidget {
  NotificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 84,
      decoration: BoxDecoration(color: Color(0xffF5FCF8)),
      child: Row(
        children: [
          Image.asset(
            Assets.sale,
            width: 72,
            height: 72,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 13,
          ),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'خصم ',
                    style: TextStyless.semiBold16,
                  ),
                  TextSpan(
                    text: '50%',
                    style: TextStyless.semiBold16.copyWith(
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: ' علي اسعار الفواكه بمناسبه العيد',
                    style: TextStyless.semiBold16,
                  ),
                ],
              ),
              maxLines: 2,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            '9 صباحا',
            style: TextStyless.regular16.copyWith(color: Color(0xff949D9E)),
          ),
        ],
      ),
    );
  }
}
