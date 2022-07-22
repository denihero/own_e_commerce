import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http_practice/presentation/screens/cart_screen/model.dart';
import 'package:http_practice/presentation/screens/cart_screen/widget/count_button.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/bounce_loading.dart';
import 'package:provider/provider.dart';

class AddCartWidget extends StatelessWidget {
  const AddCartWidget(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.price, required this.product})
      : super(key: key);

  final String title;
  final String imageUrl;
  final double price;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          children: [
            SizedBox(child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: 100, height: 100,
              placeholder: (context, url) =>
              const SpinKitDoubleBounce(color: Colors.blue),
              fit: BoxFit.contain,
            )),
            SizedBox(
              width: 150,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: CountButton(),
                    ),
                  ]),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  Transform.translate(
                    offset: const Offset(25, 0),
                    child: IconButton(
                        onPressed: () async{
                          Provider.of<ListCartProduct>(context,listen: false).removeProduct(product);
                        },
                        icon: const Icon(Icons.delete_outline,color: Colors.red,size: 25,)),
                  ),
                  Text(
                    '$price\$',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
