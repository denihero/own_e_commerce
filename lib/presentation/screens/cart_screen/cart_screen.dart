import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/colors.dart';
import 'package:http_practice/core/constant/functions.dart';

import 'package:http_practice/core/constant/string.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_list_product.dart';
import 'package:http_practice/presentation/screens/cart_screen/widget/add_cart_widget.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  final listCartProduct = ListCartProduct();
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
          actions: [
            IconButton(
                onPressed: () {
                  Provider.of<ListCartProduct>(context, listen: false)
                      .clearAll();
                  Functions.showSnackBar(
                      'Все товары успшено удалены', context, Colors.red);
                },
                icon: const Icon(
                  Icons.playlist_remove,
                  color: Colors.black,
                  size: 30,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.86,
                child:
                    Consumer<ListCartProduct>(builder: (context, product, _) {
                  return ListView.builder(
                      //physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: product.listOfProduct.length,
                      itemBuilder: (context, index) {
                        return AddCartWidget(
                          product: product.listOfProduct[index],
                        );
                      });
                }),
              ),
              Consumer<ListCartProduct>(builder: (context, product, _) {
                return Text(
                  'Total sum: ${product.sumProduct}\$',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                );
              })
            ],
          ),
        ));
  }
}
