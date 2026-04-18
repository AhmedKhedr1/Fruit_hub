// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/active_step_item.dart';
import 'package:fruit_hub/Features/Checkout/presentation/views/widgets/in_active_step_item.dart';

class StepItem extends StatelessWidget {
  StepItem(
      {super.key,
      required this.index,
      required this.title,
      required this.isActive});
  final String index, title;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: InActiveStepItem(index: index, title: title),
        secondChild: ActiveStepItem(title: title),
        crossFadeState:
            isActive ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: Duration(milliseconds: 200));
  }
}
