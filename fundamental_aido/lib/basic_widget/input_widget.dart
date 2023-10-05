import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  const MyInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        TextField(
          obscureText: false,
         decoration: InputDecoration(
            border: OutlineInputBorder(),
           labelText: 'Nama',
           ),
          ),
      ]
    );
  }
}
