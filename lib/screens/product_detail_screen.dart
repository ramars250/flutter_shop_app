import 'package:flutter/material.dart';
import 'package:flutter_shop_app/providers/products.dart';
import 'package:provider/provider.dart';

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
    //建立loaderProduct變量，firstWhere表示尋找items內的id，若找到的id與傳遞過來的id相同則傳回true
    // final loadedProduct = Provider.of<Products>(context)
    //     .items
    //     .firstWhere((element) => element.id == productId);
    //將上方邏輯移至provider中，listen: false表示資料有變動時不會重建該widget
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
