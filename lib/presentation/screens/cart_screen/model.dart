import 'package:flutter/cupertino.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';

class ListCartProduct extends ChangeNotifier {
  final List<Product> _listOfProduct = [];
  late final int _sumProduct = 0;

  List<Product> get listOfProduct => _listOfProduct;

  int get sumProduct {
    return _sumProduct ;
  }

  void addCart(Product product){
    _listOfProduct.add(product);
    notifyListeners();
  }

  void removeProduct(Product product){
    listOfProduct.remove(product);
    notifyListeners();
  }

  void clearAll(){
    listOfProduct.clear();
    notifyListeners();
  }



}