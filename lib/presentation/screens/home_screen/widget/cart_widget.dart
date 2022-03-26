import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/style.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/bottom_sheet_detail_cart_widget.dart';

import '../../detail_screen/detail_cart_screen.dart';

class CartWidget extends StatelessWidget {
  final int id;
  final String image;
  final String title;
  final double price;
  final String description;
  const CartWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailCartScreen(
                    imageUrl: image,
                    price: price,
                    description: description,
                    title: title,
                  )),
        );
      },
      onLongPress: () => showBottomSheetCart(context),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                  width: 150,
                  height: 200,
                  child: Image.network(
                    image,
                    fit: BoxFit.contain,
                  )),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 9, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '$price\$',
                    style: priceStyle,
                  ),
                  Text(
                    title,
                    style: titleStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
