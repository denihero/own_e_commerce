import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/colors.dart';
import 'package:http_practice/core/constant/style.dart';

import 'package:http_practice/core/constant/string.dart';


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
        leading: const BackButton(),
      ),
        body: Column(
          children: const [
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                    'Your total order: 0',
                    style: orderStyle,
                ),
              ),
            )
          ],
        )
    );
  }
}
