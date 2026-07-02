import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '¿No tienes cuenta?',
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        TextButton(
          onPressed: () {
            context.go('/register');
          },
          child: const Text(
            'Crear cuenta',
            style: TextStyle(
              color: Color(0xFFFF8A00),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}