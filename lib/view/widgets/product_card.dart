import 'package:flutter/material.dart';
import 'package:iti_final_project/resources/constants/app_assets.dart';
import '../../resources/sytle/app_colors.dart';
import 'my_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  final String title;
  final String description;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 180,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.kGrayColor.withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                AppAssets.car,
              ),
            ),
          ),
          MyText(
            data: title,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          MyText(
            data: description,
            color: AppColors.kGrayColor,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                data: '\$$price',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  //child: Icon(Icons.add, color: Colors.white),
                  padding: const EdgeInsets.all(10),
                  /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kPrimaryColor,
                  ),*/
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}