import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http_practice/core/constant/functions.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_list_product.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/add_cart_button.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/count_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/description_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/image_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/price_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/title_widget.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';
import 'package:provider/provider.dart';

class DetailCartScreen extends StatelessWidget {
  const DetailCartScreen(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.price,
      required this.product,
      required this.count})
      : super(key: key);

  final String imageUrl;
  final String title;
  final String description;
  final double price;
  final int count;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onPanUpdate: (details) {
          // Swiping in right direction.
          if (details.delta.dx > 20) {
            Navigator.pop(context);
          }
        },
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
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: CountWidget(count: count),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: DescriptionWidget(
                  description: description,
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
            child: AddCartButton(
              onPressed: () {
                Provider.of<ListCartProduct>(context, listen: false)
                    .addCart(product);
                Functions.showSnackBar(
                    'Товар успешно добавлен !', context, Colors.green);
              },
            ),
          ),
        ),
      ),
    );
  }
}
