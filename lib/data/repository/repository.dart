import 'package:iti_final_project/data/models/car_details_model.dart';
import 'package:iti_final_project/data/source/remote/firebase_service.dart';

import '../models/car_category_model.dart';

class Repository {
  final FirebaseService fbs;
  Repository(this.fbs);

  Future<List<CarCategoryModel>> getCarsCategories() async {
    final list = await fbs.getCarCategories();
    print("list $list");
    return list.map((e) => CarCategoryModel.fromMap(e)).toList();
  }

  Future<List<CarDetailsModel>> getCarsOfMark(String markName) async {
    final list = await fbs.getCarsOfMark(markName);
    return list.map((e) => CarDetailsModel.fromMap(e)).toList();
  }
}
