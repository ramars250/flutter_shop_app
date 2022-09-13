import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // //建立標題變數
  // final String title;
  // ProductDetailScreen(this.title);
  //設置命名路由
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    //獲取傳遞過來的id
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
