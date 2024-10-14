import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final String buku = ModalRoute.of(context)!.settings.arguments as String;
    
    return Scaffold(
      appBar: AppBar(title: Text(buku)),
      body: Column(
        children: [
          Image.network(''),
          Text(''),
          Text(''),
        ],
      ),
    );
  }
}
