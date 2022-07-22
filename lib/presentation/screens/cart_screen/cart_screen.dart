import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/colors.dart';

import 'package:http_practice/core/constant/string.dart';
import 'package:http_practice/presentation/screens/cart_screen/model.dart';
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
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.86,
                child: Consumer<ListCartProduct>(
                    builder: (context,product,_){
                      return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: product.listOfProduct.length,
                          itemBuilder: (context, index) {
                            return AddCartWidget(
                              title: product.listOfProduct[index].title!,
                              price: product.listOfProduct[index].price!,
                              imageUrl: product.listOfProduct[index].image!,
                              product: product.listOfProduct[index],
                            );
                          });
                    }
                ),
              ),
              Consumer<ListCartProduct>(
                builder: (context,product,_){
                  return Text('Total sum: ${product.sumProduct}',style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),);
                }

              )
            ],
          ),
        ));
  }
}
