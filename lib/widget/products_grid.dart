import 'package:flutter/material.dart';
import 'package:flutter_shop_app/providers/products.dart';
import 'package:flutter_shop_app/widget/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  //加入Provider後就不需要構造函數了，改為用Provider進行監聽
  // const ProductsGrid({
  //   Key? key,
  //   required this.loadedProducts,
  // }) : super(key: key);
  //
  // final List<Product> loadedProducts;

  @override
  Widget build(BuildContext context) {
    //設置productsData=Provider取得的資料
    final productsData = Provider.of<Products>(context);
    //建立products獲取productData內的資料
    final products = productsData.items;
    return GridView.builder(
      //前方增加const的時候表示將此轉換成常量，確保調用時不會重新生成
      padding: const EdgeInsets.all(10.0),
      //將loaderProducts全部更改為products變數
      itemCount: products.length,
      // loadedProducts.length,
      itemBuilder: (context, i) =>
      //第二種方式
      ChangeNotifierProvider.value(
        value: products[i],
          //這邊表示利用監聽器，多次進行建構資料
      //第一種方式
      //     ChangeNotifierProvider(
      //   create: (context) => products[i],
        //因為在上面提供資料，所以這邊的ProductItem就可以不用接收數據做為參數
        child: ProductItem(
          // products[i].id, products[i].title, products[i].imageUrl,
          // loadedProducts[i].id,
          // loadedProducts[i].title, loadedProducts[i].imageUrl
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //設置該網格有幾列
          crossAxisCount: 2,
          //設置長寬比為3/2
          childAspectRatio: 3 / 2,
          //設置每列的間距
          crossAxisSpacing: 10,
          //設置每行的間距
          mainAxisSpacing: 10),
    );
  }
}
