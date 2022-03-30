import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/cart_grid_widget.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/shopping_cart_icon_widget.dart';

import 'package:http_practice/core/constant/string.dart';

import 'model/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final Future<List<Product>>? futureProduct;

  @override
  void initState() {
    super.initState();
    futureProduct = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            actions: const [
              Padding(
                  padding: EdgeInsets.only(right: 10, top: 5),
                  child: ShoppingCartWidget())
            ],
            title: const Text(
              Strings.homeScreenAppBarTitle,
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
                child: FutureBuilder<List<Product>>(
                    future: futureProduct,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return GridCart(
                          asyncSnapshot: snapshot,
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }
                      return const CircularProgressIndicator();
                    })),
          )),
    );
  }
}
