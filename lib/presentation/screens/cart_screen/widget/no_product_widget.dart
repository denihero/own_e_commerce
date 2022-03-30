import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoProductWidget extends StatelessWidget {
  const NoProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/icons/undraw_add_to_cart_re_wrdo.svg',
            width:200,
            height:200,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'The cart is empty',
            style: TextStyle(
                fontSize: 30,
                color: Colors.grey
            ),
          ),
        ),
      ],
    );
  }
}
