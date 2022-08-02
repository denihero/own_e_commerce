import 'package:flutter/cupertino.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';

class ListCartProduct extends ChangeNotifier {
  final List<Product> _listOfProduct = [];

  List<Product> get listOfProduct => _listOfProduct;

  double? get sumProduct {
    return _listOfProduct.fold(
        0, (previousValue, element) => previousValue! + element.price!);
  }

  void addCart(Product product) {
    _listOfProduct.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    listOfProduct.remove(product);
    notifyListeners();
  }

  void clearAll() {
    listOfProduct.clear();
    notifyListeners();
  }
}
