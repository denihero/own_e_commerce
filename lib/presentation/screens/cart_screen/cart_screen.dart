import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/colors.dart';
import 'package:http_practice/core/constant/functions.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:http_practice/core/constant/string.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_list_product.dart';
import 'package:http_practice/presentation/screens/cart_screen/widget/add_cart_widget.dart';
import 'package:provider/provider.dart';

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
                height: MediaQuery.of(context).size.height * 0.84,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Consumer<ListCartProduct>(builder: (context, product, _) {
                    return RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Total sum: ',
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.black)
                            ),
                            TextSpan(
                                text: '${product.sumProduct!.roundToDouble()}\$',
                                style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w300,color: Colors.black)
                            )
                          ]
                        )
                    );
                    // return Text(
                    //   'Total sum: ${product.sumProduct!.roundToDouble()}\$',
                    //   style: const TextStyle(
                    //       fontSize: 20, fontWeight: FontWeight.w600),
                    // );
                  }),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                        onPressed: () {},
                        child: const Text('Купить',style: TextStyle(fontSize: 16),)
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }


}
