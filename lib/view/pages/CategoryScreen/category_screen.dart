import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iti_final_project/data/repository/repository.dart';
import '../../../data/source/remote/firebase_service.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/my_text.dart';
import '../../widgets/search_field.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late final Repository repo;

  @override
  void initState() {
    super.initState();
    repo = Repository(
      FirebaseService(
        auth: FirebaseAuth.instance,
        db: FirebaseFirestore.instance,
      ),
    );
  }

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
                const MyText(
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
                  child: FutureBuilder(
                      future: repo.getCarsCategories(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (snapshot.hasData) {
                          final data = snapshot.data!;
                          return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            itemCount: data.length,
                            itemBuilder: (context, index) => InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.kLightGrayColor,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.kPrimaryColor
                                          .withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        data[index].markImage,
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const SizedBox(height: 0),
                                    MyText(
                                      data: data[index].markName,
                                      color: AppColors.kPrimaryColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        } else if (snapshot.hasError) {
                          print(snapshot.error);
                          return const Center(
                            child: Text("error"),
                          );
                        } else {
                          return const Center(
                            child: Text("no data"),
                          );
                        }
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
