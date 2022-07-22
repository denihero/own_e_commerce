import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({Key? key, required this.onPressed}) : super(key: key);
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
            overlayColor: MaterialStateProperty.all(Colors.blue),
            side: MaterialStateProperty.all(
                const BorderSide(width: 2, color: Colors.black))),
        onPressed: onPressed,
        child: const Text(
          'Добавить в корзину',
          style: TextStyle(fontSize: 23, color: Colors.black),
        ),
      ),
    );
  }
}
