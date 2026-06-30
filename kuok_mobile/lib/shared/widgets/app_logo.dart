import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.width = 260,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/car_logo.jpeg',
      width: width,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
    );
  }
}