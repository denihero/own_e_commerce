import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({Key? key, required this.price}) : super(key: key);
  final double price;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$price\$',
      style: const TextStyle(fontSize: 18, color: Colors.black),
    );
  }
}
