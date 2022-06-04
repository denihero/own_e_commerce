import 'dart:convert';

import 'package:http/http.dart' as http;

import '../product.dart';

class ApiRequest{

  Future<List<Product>> getAllProduct() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

    List<Product> product = [];
    if(response.statusCode == 200){
      for(var item in jsonDecode(response.body)){
         product.add(Product.fromJson(item));
      }
      return product;
    }else{
      throw Exception('Error');
    }


  }
}