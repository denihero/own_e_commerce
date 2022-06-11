import 'package:flutter/material.dart';


class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({Key? key,required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: TextFormField(
        controller: controller,
        cursorHeight: 25,
        keyboardType: TextInputType.emailAddress,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: TextInputAction.next,
        style: const TextStyle(fontSize: 19),
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                color: Colors.transparent
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(
              color: Colors.transparent
            )
          ),
          contentPadding: EdgeInsets.only(left: 10),
          labelText: 'Email',
          labelStyle: TextStyle(fontSize: 17),
          prefixIcon: Icon(Icons.email)

        ),
      ),
    );
  }
}
