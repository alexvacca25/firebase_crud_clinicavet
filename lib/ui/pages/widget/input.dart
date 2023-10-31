import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String labelText;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextEditingController controller;

  const RoundedTextField({super.key, 
    required this.labelText,
    this.prefixIcon,
    this.obscureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
