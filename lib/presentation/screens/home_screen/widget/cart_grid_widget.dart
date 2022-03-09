import 'package:flutter/material.dart';

import '../model/product.dart';
import 'cart_widget.dart';


class GridCart extends StatelessWidget {

  const GridCart({Key? key,required this.asyncSnapshot}) : super(key: key);

  final AsyncSnapshot asyncSnapshot;

  @override
  Widget build(BuildContext context) {
    final double itemHeight = MediaQuery.of(context).size.height / 4.7;
    final double itemWidth = MediaQuery.of(context).size.width / 3.3;
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: (itemWidth / itemHeight),
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4
        ),
        itemCount: asyncSnapshot.data!.length,
        itemBuilder: (context,index){
          return CartWidget(
            image: asyncSnapshot.data![index].image!,
            title: asyncSnapshot.data![index].title,
            price: asyncSnapshot.data![index].price,
            description: asyncSnapshot.data![index].description,
            id: asyncSnapshot.data![index].id,
          );
        }
    );
  }
}
