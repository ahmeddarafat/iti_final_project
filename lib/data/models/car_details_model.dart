import 'dart:convert';

class CarDetailsModel {
  final String image;
  final String name;
  final String color;
  final String code;

  CarDetailsModel({
    required this.image,
    required this.name,
    required this.color,
    required this.code,
  });

  CarDetailsModel copyWith({
    String? image,
    String? name,
    String? color,
    String? code,
  }) {
    return CarDetailsModel(
      image: image ?? this.image,
      name: name ?? this.name,
      color: color ?? this.color,
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'color': color,
      'code': code,
    };
  }

  factory CarDetailsModel.fromMap(Map<String, dynamic> map) {
    return CarDetailsModel(
      image: map['image'] as String,
      name: map['name'] as String,
      color: map['color'] as String,
      code: map['code'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarDetailsModel.fromJson(String source) =>
      CarDetailsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CarDetailsModel(image: $image, name: $name, color: $color, code: $code)';
  }

  @override
  bool operator ==(covariant CarDetailsModel other) {
    if (identical(this, other)) return true;

    return other.image == image &&
        other.name == name &&
        other.color == color &&
        other.code == code;
  }

  @override
  int get hashCode {
    return image.hashCode ^ name.hashCode ^ color.hashCode ^ code.hashCode;
  }
}
