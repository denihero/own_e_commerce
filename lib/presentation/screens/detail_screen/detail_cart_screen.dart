import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/add_cart_button.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/description_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/image_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/price_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/title_widget.dart';

class DetailCartScreen extends StatelessWidget {
  const DetailCartScreen(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.price})
      : super(key: key);

  final String imageUrl;
  final String title;
  final String description;
  final double price;

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
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: AddCartButton(),
        ),
      ),
    );
  }
}
