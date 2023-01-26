import 'package:flutter/material.dart';
import 'package:please_help/main/diagnosisPage.dart';
import 'package:please_help/main/goodsPage.dart';

class DetailPage extends StatefulWidget {

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin
{

  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('모가나슈'),backgroundColor: Colors.blue,
      ),
      body: TabBarView(
        children: <Widget>[
          DiagnosisPage(), GoodsPage()
        ],
        controller: controller,
      ),
      bottomNavigationBar: TabBar(tabs: <Tab>[
        Tab(icon:Icon(Icons.local_hospital),),
        Tab(icon: Icon(Icons.card_giftcard),),
      ],
        labelColor: Colors.blue,
        indicatorColor: Colors.indigo,
        controller: controller,
      ));
  }
}

