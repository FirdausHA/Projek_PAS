import 'package:flutter/material.dart';
import 'package:projek_pas/Bottom_Navbar.dart';
import 'package:get/get.dart';
import 'package:projek_pas/page/Detail.dart';
import 'package:projek_pas/page/Home.dart';
import 'package:projek_pas/page/Product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: ()=> Home()),
        GetPage(name: '/product', page: ()=> ProductPage()),
        GetPage(name: '/product_detail', page: ()=> DetailPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Watch Store',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff293f6e),
        iconTheme: IconThemeData(
          color: Color(0xffbacad9),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff293f6e),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Color(0xffbacad9),
          ),
        ),
        backgroundColor: Color(0xff293f6e),
       ),
      home: Bottom(),
    );
  }
}
