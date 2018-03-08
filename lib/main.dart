import 'package:flutter/material.dart';
import 'package:flutter_demo/app.dart';
import 'package:flutter_demo/container/ContainerDemo.dart';
import 'package:flutter_demo/counter/CounterPage1.dart';
import 'package:flutter_demo/counter/CounterPage2.dart';
import 'package:flutter_demo/image/ImagePage.dart';
import 'package:flutter_demo/layout/LayoutDemo.dart';
import 'package:flutter_demo/shop/ShoppingListItem.dart';
import 'package:flutter_demo/shop/ShoppingListPage.dart';
import 'package:flutter_demo/text/TextPage.dart';

//Dart程序执行的主入口，就像java中的main函数一样
void main() {
  //runApp函数强制将根控件覆盖屏幕
  runApp(
      new MaterialApp(
        title: "Demo",
        //指定app启动进入的根节点视图
        home: new GalleryApp(),
        routes: <String, WidgetBuilder>{
          // 先声明要跳转的新页面,title是要传递的参数,
          // '/second_page'是给这个页面取个名字，后面会用到
          '/shop_page':
              (BuildContext context) => new ShoppingList(products: _kProducts,),
          '/counter_page1':
              (BuildContext context) => new CounterPage1(),
          '/counter_page2':
              (BuildContext context) => new CounterPage2(),
          '/contater_page':
              (BuildContext context) => new ContainerDemo(),
          '/text_widget_page':
              (BuildContext context) => new TextPage(),
          '/image_widget_page':
              (BuildContext context) => new ImagePage(),
          '/layout_page':
              (BuildContext context) => new LayoutDemo(),
        }, //<String, WidgetBuilder>
        //修改主题数据
        theme: new ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
            //设置平台
            platform: TargetPlatform.iOS
        ), //ThemeData
      ) //MaterialApp
  ); //runApp
}

/// 创建测试数据
final List<Product> _kProducts = <Product>[
  new Product(id: 0, name: "老干妈"),
  new Product(id: 1, name: "康师傅"),
  new Product(id: 2, name: "王致和臭豆腐"),
  new Product(id: 3, name: "手擀面"),
  new Product(id: 4, name: "大饼"),
  new Product(id: 5, name: "红酒"),
  new Product(id: 6, name: "白酒"),
  new Product(id: 7, name: "花露水"),
  new Product(id: 8, name: "TT"),
  new Product(id: 9, name: "擀面杖"),
  new Product(id: 10, name: "海底捞"),
  new Product(id: 11, name: "瘦肉"),
  new Product(id: 12, name: "香蕉"),
];

