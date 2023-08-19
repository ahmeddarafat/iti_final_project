import 'package:flutter/material.dart';

import '../../resources/constants/app_constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          prefixIcon: Image.asset('assets/images/search.png'),
          hintText: 'Search',
          hintStyle: TextStyle(
              color: kGrayColor,
              fontWeight: FontWeight.w500,
              fontSize: 16
          ),
          filled: true,
          fillColor: kGrayColor.withOpacity(0.15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          )
      ),
    );
  }
}
