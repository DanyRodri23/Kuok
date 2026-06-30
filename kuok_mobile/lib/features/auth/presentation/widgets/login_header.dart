import 'package:flutter/material.dart';

import 'package:kuok_mobile/shared/widgets/app_logo.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Carro
        const AppLogo(width: 225),

        const SizedBox(height: 14),

        // Logo Kuòk
        Image.asset(
          'assets/images/kuok_logo.png',
          width: 185,
          fit: BoxFit.contain,
        ),

        const SizedBox(height: 18),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            'La forma más segura de comprar y vender repuestos',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Colors.white70,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        const SizedBox(height: 28),
      ],
    );
  }
}