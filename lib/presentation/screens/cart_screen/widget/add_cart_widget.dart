import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http_practice/core/constant/functions.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_list_product_provider.dart';
import 'package:http_practice/presentation/screens/cart_screen/widget/count_button.dart';
import 'package:http_practice/presentation/screens/detail_screen/detail_cart_screen.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/bounce_loading.dart';
import 'package:provider/provider.dart';

class AddCartWidget extends StatefulWidget {
  const AddCartWidget({Key? key, required this.product,}) : super(key: key);

  final Product product;
  @override
  State<AddCartWidget> createState() => _AddCartWidgetState();
}

class _AddCartWidgetState extends State<AddCartWidget> {
  ValueNotifier<double> sum = ValueNotifier(0.0);
  ValueNotifier<int> count = ValueNotifier(1);

  @override
  void initState() {
    super.initState();
    sum.value = widget.product.price!;
  }

  @override
  Widget build(BuildContext context) {
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
                            maxLines: 3,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Transform.translate(
                          offset: const Offset(10, 0),
                          child: ValueListenableBuilder(
                            valueListenable: count,
                            builder: (context,int countProduct,_){
                              if(countProduct <= 0) {
                                WidgetsBinding.instance.addPostFrameCallback((
                                    _) {
                                  Provider.of<ListCartProduct>(
                                      context, listen: false)
                                      .removeProduct(widget.product);
                                });
                              }
                              return CountButton(
                                  count: count.value,
                                  increaseButton: () {
                                    count.value++;
                                    sum.value = (widget.product.price! * count.value);
                                  },
                                  decreaseButton: () {
                                    count.value--;
                                    sum.value = (sum.value - widget.product.price!);

                                  });
                            }
                          ),
                        ),
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
                    ValueListenableBuilder(
                      valueListenable: sum,
                      builder:(context, double sumProduct, _){
                        return Text(
                          '${sumProduct.toStringAsFixed(2)}\$',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        );
                      }
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
