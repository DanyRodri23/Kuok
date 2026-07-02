import 'package:flutter/material.dart';

import 'terms_checkbox.dart';
import 'register_footer.dart';

import 'package:kuok_mobile/shared/widgets/custom_button.dart';
import 'package:kuok_mobile/shared/widgets/custom_text_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        CustomTextField(
          controller: _nameController,
          label: 'Nombre completo',
          hintText: 'Daniel Rodríguez',
          prefixIcon: Icons.person_outline,
        ),

        const SizedBox(height: 18),

        CustomTextField(
          controller: _emailController,
          label: 'Correo electrónico',
          hintText: 'correo@ejemplo.com',
          keyboardType: TextInputType.emailAddress,
          prefixIcon: Icons.email_outlined,
        ),

        const SizedBox(height: 18),

        CustomTextField(
          controller: _passwordController,
          label: 'Contraseña',
          hintText: '********',
          obscureText: _obscurePassword,
          prefixIcon: Icons.lock_outline,
          suffixIcon: IconButton(
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

        const SizedBox(height: 18),

        CustomTextField(
          controller: _confirmPasswordController,
          label: 'Confirmar contraseña',
          hintText: '********',
          obscureText: _obscureConfirmPassword,
          prefixIcon: Icons.lock_outline,
          suffixIcon: IconButton(
            icon: Icon(
              _obscureConfirmPassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: Colors.white70,
            ),
            onPressed: () {
              setState(() {
                _obscureConfirmPassword =
                    !_obscureConfirmPassword;
              });
            },
          ),
        ),

        const SizedBox(height: 20),

        const TermsCheckbox(),

        const SizedBox(height: 24),

        CustomButton(
          text: 'Crear cuenta',
          onPressed: () {},
        ),

        const SizedBox(height: 30),

        const RegisterFooter(),
      ],
    );
  }
}