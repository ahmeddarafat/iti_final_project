import 'package:flutter/material.dart';

import '../../resources/constants/app_constants.dart';
import '../../resources/styles/app_colors.dart';
import 'my_text.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({Key? key, required this.title, required this.onPressed}) : super(key: key);

  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            data: title,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.kPrimaryColor,
          ),
          TextButton(
            onPressed: onPressed,
            child: MyText(
              data: 'See all',
              fontSize: 16,
              color: AppColors.kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
