import 'package:flutter/material.dart';

class GoodsPage extends StatefulWidget {
  @override
  State<GoodsPage> createState() => _GoodsPageState();
}

class _GoodsPageState extends State<GoodsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
            Text('상품 추천', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),

              // 현재 이 부분 또한 고정된 상태의 리스트뷰로 만듦
              // http 통신으로 API 데이터를 json형태로 상품 img, txt 데이터를 받아오는 작업을 해야함
              Card(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.network('https://arohanz.co.kr/web/product/big/202106/482f588945536493535eb514bc76bef4.png'),
                      title: Text('아토피 약'),
                      subtitle: Text('아토피에 좋은 약입니다.'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
