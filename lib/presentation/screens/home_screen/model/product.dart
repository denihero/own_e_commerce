import 'dart:convert';

import 'package:http/http.dart' as http;

class Product {
  late final int id;
  late final String title;
  late final double price;
  late final String category;
  late final String description;
  late final String? image;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.category,
      required this.description,
      required this.image});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'] == null ? 0.0 : json['price'].toDouble();
    description = json['description'];
    category = json['category'];
    image = json['image'];
  }

/*Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['description'] = description;
    data['category'] = category;
    data['image'] = image;
    return data;
  }
*/

}

Future<List<Product>> fetchAlbum() async {
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/products'));
  List<Product> prodList = [];
  var jsonList = jsonDecode(response.body);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    for (var prod in jsonList) {
      prodList.add(Product.fromJson(prod));
    }
    return prodList;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
