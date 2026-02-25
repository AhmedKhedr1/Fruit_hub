import 'package:flutter/material.dart';
import 'package:fruit_hub/Core/utils/Text_Styless.dart';

AppBar BuildAppBar(context, {required bool IsVisiable, required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: Visibility(
      visible: IsVisiable,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new_outlined),
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyless.bold19,
    ),
  );
}
