import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {

  final TextEditingController controller;
  final String? text;
  final TextInputType keyboardtype;
  final bool obscure;


  const CustomTextFormFieldWidget({super.key, required this.controller,required this.text, required this.keyboardtype,required this.obscure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardtype,
      obscureText: obscure,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white))
      ),
    );
  }
}
