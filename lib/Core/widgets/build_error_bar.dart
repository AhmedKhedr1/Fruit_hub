import 'package:flutter/material.dart';

void ShowErrorBar(BuildContext context, String message, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: color,
    duration: Duration(milliseconds: 550),
  ));
}
