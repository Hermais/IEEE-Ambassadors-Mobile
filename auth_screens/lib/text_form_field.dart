import 'package:auth_screens/theme.dart';
import 'package:flutter/material.dart';

class AdjustedTextFormField extends StatelessWidget {
  final Icon leadingIcon;
  final Icon? suffixIcon;
  final String labelText;
  final String? Function(String?)? validator;

  const AdjustedTextFormField(
      {super.key,
      required this.leadingIcon,
      required this.labelText,
      this.validator,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: leadingIcon,
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.white,
          ),
          suffixIcon: suffixIcon,
          fillColor: AppColors.purple,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(25),

        ),
        validator: validator,
      ),
    );
  }
}
