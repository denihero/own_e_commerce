import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/colors.dart';

import 'package:http_practice/core/constant/string.dart';
import 'package:http_practice/presentation/screens/cart_screen/widget/add_cart_widget.dart';


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
        body: SingleChildScrollView(
          child: Column(
            children: [
             SizedBox(
               height: MediaQuery.of(context).size.height * 2,
               child: ListView.builder(
                   physics: const NeverScrollableScrollPhysics(),
                   scrollDirection: Axis.vertical,
                   itemCount: 1,
                   itemBuilder: (context, index) {
                    return const AddCartWidget(title: 'Nike', price: 12, imageUrl: '',);
                   }),
             )
            ],
          ),
        ));
  }
}
