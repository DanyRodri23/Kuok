import 'package:flutter/material.dart';

class TermsCheckbox extends StatefulWidget {
  const TermsCheckbox({super.key});

  @override
  State<TermsCheckbox> createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool accepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: accepted,
          activeColor: const Color(0xFFFF8A00),
          onChanged: (value) {
            setState(() {
              accepted = value ?? false;
            });
          },
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: 'Acepto los ',
                  ),
                  TextSpan(
                    text: 'Términos y Condiciones',
                    style: TextStyle(
                      color: Color(0xFFFF8A00),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' y la Política de Privacidad.',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}