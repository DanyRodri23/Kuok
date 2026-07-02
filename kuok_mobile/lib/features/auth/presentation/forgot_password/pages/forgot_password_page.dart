import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Recuperar contraseña'),
      ),
      body: const Center(
        child: Text(
          'Pantalla de recuperación de contraseña',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}