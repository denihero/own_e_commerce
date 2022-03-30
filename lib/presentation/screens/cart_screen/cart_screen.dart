import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/colors.dart';
import 'package:http_practice/core/constant/style.dart';

import 'package:http_practice/core/constant/string.dart';
import 'package:http_practice/presentation/screens/cart_screen/widget/no_product_widget.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: cartColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: cartColor,
          title: const Text(Strings.cartScreenAppBarTitle),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            NoProductWidget(),
          ],
        ));
  }
}
