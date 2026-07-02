import 'package:flutter/material.dart';

import 'package:kuok_mobile/shared/widgets/app_logo.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppLogo(width: 180),

        SizedBox(height: 20),

        Text(
          'Crea tu cuenta',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 10),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Únete a la forma más segura de comprar y vender repuestos.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}