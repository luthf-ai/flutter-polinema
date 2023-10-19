import 'package:flutter/material.dart';
import 'package:flutter_layout/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Center(
          child: 
            Text(itemArgs.name + ' with ' + itemArgs.price.toString()),
        ),
      ),
    );
  }
}
