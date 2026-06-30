import 'package:flutter/material.dart';

import '../validators/login_validator.dart';

import 'login_divider.dart';
import 'social_login_buttons.dart';

import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;
  bool _obscurePassword = true;

  void _login() {
    final emailError =
        LoginValidator.validateEmail(_emailController.text);

    final passwordError =
        LoginValidator.validatePassword(_passwordController.text);

    if (emailError != null || passwordError != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: const Color(0xFFFF7A00),
          content: Text(emailError ?? passwordError!),
        ),
      );
      return;
    }

    setState(() => _isLoading = true);

    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;

      setState(() => _isLoading = false);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color(0xFFFF7A00),
          content: Text('Inicio de sesión correcto'),
        ),
      );
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          CustomTextField(
            controller: _emailController,
            label: 'Correo electrónico',
            hintText: 'correo@ejemplo.com',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icons.email_outlined,
            validator: LoginValidator.validateEmail,
          ),

          CustomTextField(
            controller: _passwordController,
            label: 'Contraseña',
            hintText: '********',
            obscureText: _obscurePassword,
            prefixIcon: Icons.lock_outline,
            validator: LoginValidator.validatePassword,
            suffixIcon: IconButton(
              splashRadius: 20,
              icon: Icon(
                _obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: Colors.white70,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(
                  color: Color(0xFFFF7A00),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          CustomButton(
            text: 'Iniciar sesión',
            isLoading: _isLoading,
            onPressed: _login,
          ),

          const LoginDivider(),

          const SocialLoginButtons(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '¿No tienes cuenta?',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Crear cuenta',
                  style: TextStyle(
                    color: Color(0xFFFF7A00),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}