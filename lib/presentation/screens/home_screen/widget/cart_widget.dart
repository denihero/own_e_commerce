import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/style.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/bottom_sheet_detail_cart_widget.dart';

import '../../detail_screen/detail_cart_screen.dart';
import 'bounce_loading.dart';

class CartWidget extends StatelessWidget {
  final int id;
  final String image;
  final String title;
  final double price;
  final String description;
  final double rating;
  final Product product;
  const CartWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.id,
        required this.rating, required this.product})
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
                    product: product,
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
                  child: CachedNetworkImage(
                    imageUrl: image,
                    placeholder: (context, url) =>
                        const SpinKitDoubleBounce(color: Colors.blue),
                    fit: BoxFit.contain,
                  )),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 9, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$price\$',
                        style: priceStyle,
                      ),
                      Row(
                        children: [
                          Text('$rating'),
                          const Icon(Icons.star,size: 17,),
                          const SizedBox(width: 10)
                        ],
                      )
                    ],
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
