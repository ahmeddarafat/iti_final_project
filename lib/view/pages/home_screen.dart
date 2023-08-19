import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iti_final_project/resources/constants/app_constants.dart';
import '../widgets/my_text.dart';
import '../widgets/product_card.dart';
import '../widgets/search_field.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatelessWidget {
  final List<String> sliderImages = [
    'assets/images/slider_image1.jpeg',
    'assets/images/slider_image2.jpeg',
    'assets/images/slider_image3.jpeg',
  ];

  final List<Product> popularCars = [
    Product(title: 'BMW X5', description: 'BMW', price: '50000', image: 'Car'),
    Product(title: 'Audi Q7', description: 'Audi', price: '55000', image: 'Car'),
    Product(title: 'Toyota Camry', description: 'Toyota', price: '45000', image: 'Car'),
    Product(title: 'Ford Mustang', description: 'Ford', price: '60000', image: 'Car'),
  ];

  final List<Product> bestSelling = [
    Product(title: 'Toyota Camry', description: 'Toyota', price: '45000', image: 'Car'),
    Product(title: 'Ford Mustang', description: 'Ford', price: '60000', image: 'Car'),
    Product(title: 'BMW X5', description: 'BMW', price: '50000', image: 'Car'),
    Product(title: 'Audi Q7', description: 'Audi', price: '55000', image: 'Car'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/CarLogo.jpg',
                height: 40,
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/marker.png'),
                    const SizedBox(width: 5),
                    MyText(
                      data: 'Mansoura, Egypt',
                      color: kDarkGrayColor,
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
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
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
                  itemBuilder: (context, index) => ProductCard(
                    title: popularCars[index].title,
                    description: popularCars[index].description,
                    price: popularCars[index].price,
                    image: popularCars[index].image,
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
                  itemBuilder: (context, index) => ProductCard(
                    title: bestSelling[index].title,
                    description: bestSelling[index].description,
                    price: bestSelling[index].price,
                    image: bestSelling[index].image,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  final String title;
  final String description;
  final String price;
  final String image;

  Product({required this.title, required this.description, required this.price, required this.image});
}
