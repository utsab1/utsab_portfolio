import 'package:flutter/material.dart';
import 'package:aryal/values/values.dart';

class AryalVerticalDivider extends StatelessWidget {
  const AryalVerticalDivider({
    this.thickness = 0.8,
    this.width,
    this.color = AppColors.black,
  });

  final double? width;
  final double thickness;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(thickness: thickness);
  }
}
