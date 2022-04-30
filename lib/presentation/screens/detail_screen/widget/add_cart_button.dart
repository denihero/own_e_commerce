import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            overlayColor: MaterialStateProperty.all(Colors.blue),
            side: MaterialStateProperty.all(
                const BorderSide(width: 2, color: Colors.black))),
        onPressed: () {

        },
        child: const Text(
          'Добавить в корзину',
          style: TextStyle(fontSize: 23, color: Colors.black),
        ),
      ),
    );
  }
}
