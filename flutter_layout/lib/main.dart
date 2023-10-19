import 'package:flutter/material.dart';
import 'package:flutter_layout/pages/home_page.dart';
import 'package:flutter_layout/pages/item_page.dart';


void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) =>  HomePage(),
      '/item': (context) => const ItemPage(),
    },
  )); 
}
