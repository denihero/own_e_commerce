import 'package:flutter/material.dart';

class CountButton extends StatelessWidget {
  const CountButton(
      {Key? key, required this.increaseButton, required this.decreaseButton, required this.count})
      : super(key: key);

  final Function() increaseButton;
  final Function() decreaseButton;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 110,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black
        ),
        borderRadius: const BorderRadius.all(Radius.circular(6))
      ),
      child: Row(
        children: [
          IconButton(
              splashRadius: 20,
              color: Colors.grey,
              padding: EdgeInsets.zero,
              onPressed: decreaseButton,
              icon: const Icon(Icons.remove_circle)),
          Text(
            '$count',
            style: TextStyle(fontSize: 19),
          ),
          IconButton(
              color: Colors.grey,
              splashRadius: 20,
              padding: EdgeInsets.zero,
              onPressed: increaseButton,
              icon: const Icon(Icons.add_circle)),
        ],
      ),
    );
  }
}
