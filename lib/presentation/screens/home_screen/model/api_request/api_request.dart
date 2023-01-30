import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../product.dart';

class ApiRequest {

  var dio = Dio(
    BaseOptions(
      baseUrl: 'https://fakestoreapi.com/products/',
    ),
  );

  Future<List<Product>> getAllProduct() async {
    List<Product> product = [];
    try {
      final Response response =
      await dio.get(BaseOptions().baseUrl);
      if (response.statusCode == 200) {
        for (var item in response.data) {
          product.add(Product.fromJson(item));
        }
      } else {
        throw Exception('Error');
      }
    } on DioError catch(e) {
      if(e.response != null){
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      }else{
        print('Error sending request!');
        print(e.message);
      }
    }

    return product;
  }
}
