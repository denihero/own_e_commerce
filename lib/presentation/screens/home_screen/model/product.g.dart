// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      image: json['image'] as String?,
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      category: $enumDecodeNullable(_$CategoryEnumMap, json['category']),
      filter: $enumDecodeNullable(_$FilterEnumMap, json['filter']),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'image': instance.image,
      'rating': instance.rating,
      'category': _$CategoryEnumMap[instance.category],
      'filter': _$FilterEnumMap[instance.filter],
    };

const _$CategoryEnumMap = {
  Category.MEN_S_CLOTHING: "men's clothing",
  Category.JEWELERY: 'jewelery',
  Category.ELECTRONICS: 'electronics',
  Category.WOMEN_S_CLOTHING: "women's clothing",
  Category.ALL: 'all',
};

const _$FilterEnumMap = {
  Filter.HIGH_PRICE: 'HIGH_PRICE',
  Filter.LOW_PRICE: 'LOW_PRICE',
  Filter.RATING: 'RATING',
  Filter.ALL: 'ALL',
};

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      rate: (json['rate'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };

EnumValues _$EnumValuesFromJson(Map<String, dynamic> json) => EnumValues(
      (json['map'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, $enumDecode(_$CategoryEnumMap, e)),
      ),
    )..reverseMap = (json['reverseMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry($enumDecode(_$CategoryEnumMap, k), e as String),
      );

Map<String, dynamic> _$EnumValuesToJson(EnumValues instance) =>
    <String, dynamic>{
      'map': instance.map?.map((k, e) => MapEntry(k, _$CategoryEnumMap[e]!)),
      'reverseMap': instance.reverseMap
          ?.map((k, e) => MapEntry(_$CategoryEnumMap[k]!, e)),
    };
