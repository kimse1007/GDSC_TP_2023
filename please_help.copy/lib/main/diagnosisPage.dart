import 'package:flutter/material.dart';

class DiagnosisPage extends StatefulWidget {
  @override
  State<DiagnosisPage> createState() => _DiagnosisPageState();
}

class _DiagnosisPageState extends State<DiagnosisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              // 현재 이 부분의 디자인은 따로 작업하지 않음
              // http 통신으로 API 데이터를 json형태로 피부병 img, txt 데이터를 받아오는 작업을 해야함
              Text('진단 결과', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
