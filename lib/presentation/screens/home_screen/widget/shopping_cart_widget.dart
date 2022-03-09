import 'package:flutter/material.dart';

class ShoppingCartWidget extends StatelessWidget {
  const ShoppingCartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'cart_screen');
            },
            icon: const Icon(
              Icons.shopping_cart,
              size: 28,
            )
        ),
        const Positioned(
          right: 1,
          child: CircleAvatar(
            maxRadius: 10,
            backgroundColor: Colors.red,
            child: Text(
                '0',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                )),
          ),
        ),
      ],
    );
  }
}
