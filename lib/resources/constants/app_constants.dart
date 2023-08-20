/*class AppConstants {
  AppConstants._();


}*/
import 'package:flutter/material.dart';
import '../../data/models/carCategory.dart';
import '../../data/models/prodcut_model.dart';
import '../../view/pages/CategoryScreen/category_screen.dart';
import 'app_assets.dart';



final List<String> sliderImages = [
  AppAssets.slider_image1,
  AppAssets.slider_image2,
  AppAssets.slider_image3,
];

final List<Product> popularCars = [
  Product(title: 'BMW X5', description: 'BMW', price: '50000', image: AppAssets.car),
  Product(title: 'Audi Q7', description: 'Audi', price: '55000', image: AppAssets.car),
  Product(title: 'Toyota Camry', description: 'Toyota', price: '45000', image: AppAssets.car),
  Product(title: 'Ford Mustang', description: 'Ford', price: '60000', image: AppAssets.car),
];

final List<Product> bestSelling = [
  Product(title: 'Toyota Camry', description: 'Toyota', price: '45000', image: AppAssets.car),
  Product(title: 'Ford Mustang', description: 'Ford', price: '60000', image: AppAssets.car),
  Product(title: 'BMW X5', description: 'BMW', price: '50000', image: AppAssets.car),
  Product(title: 'Audi Q7', description: 'Audi', price: '55000', image: AppAssets.car),
];

  final List<CarCategory> carCategories = [
    CarCategory(title: 'Toyota', image: AppAssets.toyota),
    CarCategory(title: 'Volkswagen', image: AppAssets.volkswagen),
    CarCategory(title: 'Ford', image: AppAssets.ford),
    CarCategory(title: 'Honda', image: AppAssets.honda),
    CarCategory(title: 'Chevrolet', image: AppAssets.chevrolet),
    CarCategory(title: 'Nissan', image: AppAssets.nissan),
  ];

double getHeight(BuildContext context, double fraction, {bool subtractAppBar = true}) {
  final mediaQuery = MediaQuery.of(context);
  final appBarHeight = AppBar().preferredSize.height;
  final subtraction = subtractAppBar ? (mediaQuery.padding.top + appBarHeight) : 0;
  return (mediaQuery.size.height - subtraction) / fraction;
}

double getWidth(BuildContext context, double fraction) {
  final mediaQuery = MediaQuery.of(context);
  return (mediaQuery.size.width) / fraction;
}
