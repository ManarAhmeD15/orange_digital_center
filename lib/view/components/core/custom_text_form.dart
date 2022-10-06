import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customTextForm(var controller,) {
  bool isPassword = false;

  return TextFormField(
    controller: controller,
    cursorColor: Colors.grey,
    style: TextStyle(
      color: Colors.grey,
    ),
    keyboardType: TextInputType.visiblePassword,
    decoration: InputDecoration(
      labelText: 'Password',
      labelStyle: TextStyle(
        color: Colors.grey,
      ),
      focusColor: Colors.orange[800],
      suffixIcon: IconButton(
        icon: Icon(
          isPassword ? Icons.visibility : Icons.visibility_off,
          color: Colors.orange,
        ),
        onPressed: () {
          isPassword = !isPassword;
        },
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.blue),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 3, color: Colors.orange),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}
