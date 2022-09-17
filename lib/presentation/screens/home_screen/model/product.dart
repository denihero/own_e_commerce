import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class Product {
  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.image,
    this.rating,
    this.category,
    this.filter,
  });

  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? image;
  final Rating? rating;
  final Category? category;
  final Filter? filter;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable(genericArgumentFactories: true)
class Rating {
  Rating({
    this.rate,
    this.count,
  });

  final double? rate;
  final int? count;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
  Map<String, dynamic> toJson() => _$RatingToJson(this);
}

enum Category {
  @JsonValue("men's clothing") MEN_S_CLOTHING,
  @JsonValue("jewelery") JEWELERY,
  @JsonValue("electronics") ELECTRONICS,
  @JsonValue("women's clothing") WOMEN_S_CLOTHING,
  @JsonValue("all") ALL
}

enum Filter { HIGH_PRICE, LOW_PRICE, RATING, ALL }


@JsonSerializable(genericArgumentFactories: true)
class EnumValues {
  Map<String, Category>? map;
  Map<Category, String>? reverseMap;

  EnumValues(this.map);

  Map<Category, String>? get reverse {
    reverseMap ??= map?.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
