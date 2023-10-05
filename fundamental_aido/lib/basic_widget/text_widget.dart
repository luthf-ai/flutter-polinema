import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Nama saya Aido, 2141720136",
      style: TextStyle(color: Colors.black, fontSize: 20),
      textAlign: TextAlign.center);
  }
}