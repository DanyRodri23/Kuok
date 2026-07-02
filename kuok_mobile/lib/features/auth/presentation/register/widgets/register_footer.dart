import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterFooter extends StatelessWidget {
  const RegisterFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '¿Ya tienes una cuenta?',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 15,
          ),
        ),
        TextButton(
          onPressed: () {
            context.go('/login');
          },
          child: const Text(
            'Iniciar sesión',
            style: TextStyle(
              color: Color(0xFFFF8A00),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}