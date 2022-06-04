import 'package:flutter/material.dart';


class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorHeight: 25,

      keyboardType: TextInputType.emailAddress,
      textAlignVertical: TextAlignVertical.bottom,
      style: const TextStyle(fontSize: 19),

      decoration: const InputDecoration(
        contentPadding: EdgeInsets.only(),
        labelText: 'Email',
        labelStyle: TextStyle(fontSize: 17),
      ),
    );
  }
}
