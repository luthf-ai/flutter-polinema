import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spender/data/expense_data.dart';
import 'package:spender/pages/home_page.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExpenseData(),
      builder: (context, child) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spender',
      home: HomePage(),
    )
    );
  }
}
