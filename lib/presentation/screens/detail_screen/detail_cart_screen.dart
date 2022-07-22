import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http_practice/presentation/screens/cart_screen/model.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/add_cart_button.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/description_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/image_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/price_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/title_widget.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';
import 'package:provider/provider.dart';

class DetailCartScreen extends StatelessWidget {
   DetailCartScreen(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.price, required this.product})
      : super(key: key);

  final String imageUrl;
  final String title;
  final String description;
  final double price;
  final Product product;

  final listOfProduct = ListCartProduct();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            title,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [ImageWidget(imageUrl: imageUrl)],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TitleWidget(title: title),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: PriceWidget(price: price),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: DescriptionWidget(
                description: description,
              ),
            ),
          ],
        ),
        bottomNavigationBar:  Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: AddCartButton(
            onPressed: () {
              Provider.of<ListCartProduct>(context,listen: false).addCart(product);

              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    behavior: SnackBarBehavior.floating,
                    width: 200,
                    duration: Duration(milliseconds: 1500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    backgroundColor: Colors.green,
                      content: Text(
                          'Товар успешно добавлен !',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                  )
              );
            },
          ),
        ),
      ),
    );
  }

}
