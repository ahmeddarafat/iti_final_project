// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CarCategoryModel {
  final String markImage;
  final String markName;

  CarCategoryModel({
    required this.markImage,
    required this.markName,
  });

  CarCategoryModel copyWith({
    String? markImage,
    String? markName,
  }) {
    return CarCategoryModel(
      markImage: markImage ?? this.markImage,
      markName: markName ?? this.markName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': markImage,
      'mark': markName,
    };
  }

  factory CarCategoryModel.fromMap(Map<String, dynamic> map) {
    return CarCategoryModel(
      markImage: map['image'] as String,
      markName: map['mark'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarCategoryModel.fromJson(String source) =>
      CarCategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CarCategoryModel(markImage: $markImage, markName: $markName)';

  @override
  bool operator ==(covariant CarCategoryModel other) {
    if (identical(this, other)) return true;

    return other.markImage == markImage && other.markName == markName;
  }

  @override
  int get hashCode => markImage.hashCode ^ markName.hashCode;
}
