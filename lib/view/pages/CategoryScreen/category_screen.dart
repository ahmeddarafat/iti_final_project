import 'package:flutter/material.dart';
import '../../../resources/constants/app_constants.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/my_text.dart';
import '../../widgets/search_field.dart';


class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyText(
                  data: 'Car Categories',
                  color: AppColors.kPrimaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 40),
    
                const SearchField(),
                const SizedBox(height: 20),
    
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: carCategories.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.kLightGrayColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.kPrimaryColor.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              carCategories[index].image,
                              width: 80,
                              height: 80,
                            ),
                            const SizedBox(height: 0),
                            MyText(
                              data: carCategories[index].title,
                              color: AppColors.kPrimaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


