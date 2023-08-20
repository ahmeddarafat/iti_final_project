import 'package:flutter/material.dart';

import '../../resources/constants/app_constants.dart';
import '../../resources/sytle/app_colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.kPrimaryColor,
      decoration: InputDecoration(
          prefixIcon: Image.asset('assets/images/search.png'),
          hintText: 'Search',
          hintStyle: TextStyle(
              color: AppColors.kGrayColor,
              fontWeight: FontWeight.w500,
              fontSize: 16
          ),
          filled: true,
          fillColor: AppColors.kPrimaryColor.withOpacity(0.15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          )
      ),
    );
  }
}
