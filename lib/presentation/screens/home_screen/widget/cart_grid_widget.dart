import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/home_screen/model/product.dart';
import 'cart_widget.dart';

class GridCart extends StatefulWidget {
  const GridCart({Key? key, required this.product}) : super(key: key);
  final List<Product> product;

  @override
  State<GridCart> createState() => _GridCartState();
}

class _GridCartState extends State<GridCart> {
  @override
  Widget build(BuildContext context) {
    final double itemHeight = MediaQuery.of(context).size.height / 4.7;
    final double itemWidth = MediaQuery.of(context).size.width / 3.3;
    return GridView.builder(
        addAutomaticKeepAlives: false,
        shrinkWrap: true,
        //physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: (itemWidth / itemHeight),
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4),
        itemCount: widget.product.length,
        itemBuilder: (context, index) {
          return CartWidget(
            image: widget.product[index].image!,
            title: widget.product[index].title!,
            price: widget.product[index].price!,
            description:widget.product[index].description!,
            id: widget.product[index].id!,
          );
        });
  }
}
