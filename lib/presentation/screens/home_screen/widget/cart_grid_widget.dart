import 'package:flutter/material.dart';
import 'cart_widget.dart';

class GridCart extends StatefulWidget {
  const GridCart({Key? key, required this.asyncSnapshot}) : super(key: key);
  final AsyncSnapshot asyncSnapshot;

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
        itemCount: widget.asyncSnapshot.data!.length,
        itemBuilder: (context, index) {
          return CartWidget(
            image: widget.asyncSnapshot.data![index].image!,
            title: widget.asyncSnapshot.data![index].title,
            price: widget.asyncSnapshot.data![index].price,
            description: widget.asyncSnapshot.data![index].description,
            id: widget.asyncSnapshot.data![index].id,
          );
        });
  }
}
