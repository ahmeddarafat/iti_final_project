import 'package:flutter/material.dart';

import '../../constants.dart';


class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, required this.text});

  final String text;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: kPrimaryColorWhite,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(text,
            style: TextStyle(
              fontSize: 25,
              fontFamily: "pacifico",
              fontWeight: FontWeight.w500,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}