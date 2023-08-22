import 'package:flutter/material.dart';

import '../../constants.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, this.hintText, this.obscureText =false, this.onChanged});
  final String? hintText;
  bool? obscureText;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColorWhite,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColorWhite,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColorBlue,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColorRed,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColorWhite,
          ),
        ),
      ),
    );
  }
}