import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iti_final_project/data/repository/repository.dart';
import 'package:iti_final_project/data/source/remote/firebase_service.dart';
import 'package:iti_final_project/resources/constants/app_assets.dart';
import '../../../resources/constants/app_constants.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/my_text.dart';
import '../../widgets/product_card.dart';
import '../../widgets/search_field.dart';
import '../../widgets/section_header.dart';
import '../cart_page/cart_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final repo = Repository(FirebaseService(
      auth: FirebaseAuth.instance, db: FirebaseFirestore.instance));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.carLogo,
                  height: 40,
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppAssets.marker),
                      const SizedBox(width: 5),
                      const MyText(
                        data: 'Mansoura, Egypt',
                        color: AppColors.kDarkGrayColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const SearchField(),
                const SizedBox(height: 20),
                // Image Slider
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200,
                      viewportFraction: 1.0,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                    ),
                    items: sliderImages.map((imagePath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),

                SectionHeader(
                  title: 'Popular Cars',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: popularCars.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(),
                          ),
                        );
                      },
                      child: ProductCard(
                        title: popularCars[index].title,
                        description: popularCars[index].description,
                        price: popularCars[index].price,
                        image: popularCars[index].image,
                      ),
                    ),
                  ),
                ),

                SectionHeader(
                  title: 'Best Selling',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: bestSelling.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(),
                          ),
                        );
                      },
                      child: ProductCard(
                        title: bestSelling[index].title,
                        description: bestSelling[index].description,
                        price: bestSelling[index].price,
                        image: bestSelling[index].image,
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
