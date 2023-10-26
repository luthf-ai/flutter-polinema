import 'package:flutter/material.dart';
import 'package:nest_app/pages/home_page.dart';
import 'package:nest_app/pages/login_page.dart';



void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/': (context) =>  HomePage(),
      '/login': (context) =>  LoginPage(),
    },
  )); 
}
