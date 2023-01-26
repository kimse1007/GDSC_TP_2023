import 'package:flutter/material.dart';
import 'galleryPage.dart';
import 'dart:convert';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('모가나슈'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(children: [
          Image.network('https://image.chosun.com/sitedata/image/202006/09/2020060902947_0.png',height: 350,),
          Text('사진을 업로드하여 여러분의 병을 진찰해보세요', style: TextStyle(fontSize: 15, color: Colors.black),),
          FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed('/gallery');
              }, child: Text('이미지 업로드'))
        ],),
      ),
    );
  }
}
