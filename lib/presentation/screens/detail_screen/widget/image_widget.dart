import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http_practice/presentation/screens/home_screen/widget/bounce_loading.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Center(


      child: SizedBox(
        width: 300,
        height: 350,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: 300,
              height: 300,
              placeholder: (context, url) =>
              const SpinKitDoubleBounce(color: Colors.blue),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
