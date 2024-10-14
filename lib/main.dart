import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/detail_page.dart';

void main() 
{runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Buku',
      initialRoute: '/',
      routes: {
      '/':(context)=> HomePage(),
      '/detail':(context)=> DetailPage(),
      },
    );
  }
}