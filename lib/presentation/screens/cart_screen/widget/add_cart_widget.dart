import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/functions.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_list_product.dart';
import 'package:http_practice/presentation/screens/cart_screen/widget/count_button.dart';
import 'package:http_practice/presentation/screens/detail_screen/detail_cart_screen.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/bounce_loading.dart';
import 'package:provider/provider.dart';

class AddCartWidget extends StatefulWidget {
  const AddCartWidget({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<AddCartWidget> createState() => _AddCartWidgetState();
}

class _AddCartWidgetState extends State<AddCartWidget> {
  double sum = 0.0;
  @override
  Widget build(BuildContext context) {
    double? generalProduct = widget.product.price;
    sum = generalProduct!;
    return Container(
      width: 200,
      height: 140,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DetailCartScreen(product: widget.product)));
        },
        child: Card(
          elevation: 5,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Row(
            children: [
              Hero(
                tag: '${widget.product.id}',
                child: SizedBox(
                    child: CachedNetworkImage(
                  imageUrl: widget.product.image!,
                  width: 100,
                  height: 100,
                  placeholder: (context, url) =>
                      const SpinKitDoubleBounce(color: Colors.blue),
                  fit: BoxFit.contain,
                )),
              ),
              SizedBox(
                width: 150,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 4),
                          child: Text(
                            widget.product.title!,
                            maxLines: 4,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: CountButton(
                            increaseButton: () {}, decreaseButton: () {}),
                      )
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
                          onPressed: () async {
                            Provider.of<ListCartProduct>(context, listen: false)
                                .removeProduct(widget.product);
                            Functions.showSnackBar(
                                'Товар успешно удален', context, Colors.red);
                          },
                          icon: const Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                            size: 25,
                          )),
                    ),
                    Text(
                      '${sum}\$',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
