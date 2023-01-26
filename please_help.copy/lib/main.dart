import 'package:flutter/material.dart';
import 'package:please_help/galleryPage.dart';
import 'detailPage.dart';
import 'mainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '모나가슈',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => MainPage(),
        '/gallery' : (context) => GalleryPage(),
        '/detail' : (context) => DetailPage(),
       },
    );
  }
}

