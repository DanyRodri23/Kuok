import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Logo Kuòk
        Image.asset(
          'assets/images/kuok_logo.png',
          width: 190,
          fit: BoxFit.contain,
        ),

        const SizedBox(height: 6),

        // Carro
        Image.asset(
          'assets/images/car_logo.jpeg',
          width: 250,
          fit: BoxFit.contain,
        ),

        const SizedBox(height: 8),

        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
              height: 1.35,
            ),
            children: [
              TextSpan(
                text: 'La forma más segura de comprar\n'
                    'y vender ',
              ),
              TextSpan(
                text: 'repuestos',
                style: TextStyle(
                  color: Color(0xFFFF7A00),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}