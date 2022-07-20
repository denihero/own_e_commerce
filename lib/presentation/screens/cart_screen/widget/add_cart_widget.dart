import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/cart_screen/widget/count_button.dart';

class AddCartWidget extends StatelessWidget {
  const AddCartWidget(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.price})
      : super(key: key);

  final String title;
  final String imageUrl;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        elevation: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          children: [
            const SizedBox(width: 100, height: 100, child: Placeholder()),
            SizedBox(
              width: 150,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: CountButton(),
                    ),
                  ]),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                '$price\$',
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
