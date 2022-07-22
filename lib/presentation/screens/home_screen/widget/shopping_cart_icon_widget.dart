import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/cart_screen/cart_list_product.dart';
import 'package:provider/provider.dart';

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart_screen');
            },
            icon: const Icon(
              Icons.shopping_cart,
              size: 28,
              color: Colors.black,
            )),
        Positioned(
          right: 1,
          child: CircleAvatar(
            maxRadius: 10,
            backgroundColor: Colors.redAccent,
            child: Consumer<ListCartProduct>(
              builder: (BuildContext context, value, _) {
                return Text('${value.listOfProduct.length}',
                    style: const TextStyle(fontSize: 15, color: Colors.white));
              },
            ),
          ),
        ),
      ],
    );
  }
}
