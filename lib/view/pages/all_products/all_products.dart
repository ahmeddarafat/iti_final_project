import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iti_final_project/resources/styles/app_colors.dart';

import '../../../data/repository/repository.dart';
import '../../../data/source/remote/firebase_service.dart';
import '../../../resources/constants/app_constants.dart';
import '../../widgets/product_card.dart';
import '../cart_page/cart_screen.dart';

class AllProducts extends StatelessWidget {
  AllProducts({super.key});

  final repo = Repository(FirebaseService(
      auth: FirebaseAuth.instance, db: FirebaseFirestore.instance));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Cars",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 25.sp
          ),),
        centerTitle: true,
      ),
      body: SizedBox(
        height:MediaQuery.of(context).size.height * 0.85,
        child: ListView.builder(
          itemCount: popularCars.length,
          scrollDirection: Axis.vertical,
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
    );
  }
}
