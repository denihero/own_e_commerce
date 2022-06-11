import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({Key? key,required this.controller,this.label = 'Password'}) : super(key: key);

  final TextEditingController controller;
  final String? label;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: TextFormField(
        controller: widget.controller,
        cursorHeight: 25,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: TextInputAction.next,
        obscureText: hidePassword,
        validator: (value ) {

        },
        style: const TextStyle(fontSize: 19),
        decoration:  InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                    color: Colors.transparent
                )
            ),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                    color: Colors.transparent
                )
            ),
            contentPadding: const EdgeInsets.only(left: 10),
            labelText: widget.label,
            labelStyle: const TextStyle(fontSize: 17),
            prefixIcon: const Icon(Icons.shield),
            suffixIcon: IconButton(
                onPressed: () {
                  setState((){
                    hidePassword = !hidePassword;
                  });
                },
                icon: Icon(
                    hidePassword ? Icons.visibility_off: Icons.visibility
                )
            )

        ),
      ),
    );
  }
}
