import 'package:flutter/material.dart';

Future showBottomSheetCart(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      enableDrag: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
      builder: (BuildContext context) {
        return Container(
          height: 600,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: const [Text('Bottom sheet text')],
            ),
          ),
        );
      });
}
