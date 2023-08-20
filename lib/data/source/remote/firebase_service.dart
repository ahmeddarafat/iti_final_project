import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  final FirebaseAuth auth;
  final FirebaseFirestore db;
  FirebaseService({required this.auth, required this.db});

  Future<List<Map<String, dynamic>>> getCarCategories() async {
    List<Map<String, dynamic>> categories = [];
    final response = await db.collection("cars-categories").get();
    for (var category in response.docs) {
      categories.add(category.data());
    }
    return categories;
  }

  Future<List<Map<String, dynamic>>> getCarsOfMark(String markName) async {
    List<Map<String, dynamic>> markCars = [];
    final response = await db
        .collection("cars-details")
        .doc(markName)
        .collection("cars")
        .get();
    for (var car in response.docs) {
      markCars.add(car.data());
    }
    return markCars;
  }
}
