import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fruitmarketflutter/common/color_extension.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback onPressed;
  const RoundButton({
    super.key,
    required this.title,
    this.width = double.maxFinite,
    this.height = 50,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: ColorExtension.primary,
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: ColorExtension.bg,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
