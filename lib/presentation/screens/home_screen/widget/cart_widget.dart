import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/style.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';

import '../../detail_screen/detail_cart_screen.dart';
import 'bounce_loading.dart';

class CartWidget extends StatelessWidget {
  final Product product;
  const CartWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailCartScreen(
                    product: product,
                  )),
        );
      },
      //onLongPress: () => showBottomSheetCart(context),
      child: Hero(
        tag: '${product.id}',
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
                child: CachedNetworkImage(
                  imageUrl: product.image!,
                  width:180,
                  height: 190,
                  placeholder: (context, url) =>
                      const SpinKitDoubleBounce(color: Colors.blue),
                  fit: BoxFit.contain,
                ),
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
                          '${product.price}\$',
                          style: priceStyle,
                        ),
                        Row(
                          children: [
                            Text('${product.rating!.rate}'),
                            const Icon(
                              Icons.star,
                              size: 17,
                            ),
                            const SizedBox(width: 10)
                          ],
                        )
                      ],
                    ),
                    Text(
                      product.title!,
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
      ),
    );
  }
}
