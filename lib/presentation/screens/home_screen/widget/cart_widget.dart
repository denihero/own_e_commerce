import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/style.dart';
import 'package:http_practice/presentation/screens/home_screen/detail_cart_screen.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/bottom_sheet_detail_cart_widget.dart';

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
        required this.description, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailCartScreen()),
        );
      },
      onLongPress:() => showBottomSheetCart(context),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 1,
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
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '$price\$',
                    style:priceStyle,
                  ),
                  Text(
                    title,
                    style: titleStyle,
                    overflow:TextOverflow.ellipsis,
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