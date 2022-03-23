import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/image_widget.dart';
import 'package:http_practice/presentation/screens/detail_screen/widget/title_widget.dart';


class DetailCartScreen extends StatelessWidget {
  const DetailCartScreen({Key? key,required this.imageUrl,required this.title, required this.description,required this.price}) : super(key: key);

  final String imageUrl;
  final String title;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_outlined,color: Colors.black,),
        title: Text(title),
      ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                ImageWidget(imageUrl: imageUrl)
              ],
            ),
            TitleWidget(title: title),
          ],
        )
    );
  }
}
