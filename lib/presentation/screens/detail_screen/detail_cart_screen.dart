import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/functions.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_list_product_provider.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/add_cart_button.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/count_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/description_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/image_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/price_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/title_widget.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';
import 'package:provider/provider.dart';

class DetailCartScreen extends StatelessWidget {
  const DetailCartScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

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
              product.title!,
              style: const TextStyle(color: Colors.black),
            ),
          ),
          body: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Hero(
                      tag: '${product.id}',
                      child: ImageWidget(imageUrl: product.image!))
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: TitleWidget(title: product.title!),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: PriceWidget(price: product.price!),
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: CountWidget(count: product.rating!.count!),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: DescriptionWidget(
                  description: product.description!,
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
