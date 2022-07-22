import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({Key? key, required this.count}) : super(key: key);
  final int count;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Количество: $count',
      style: const TextStyle(
        color: Colors.black87
      ),
    );
  }
}
