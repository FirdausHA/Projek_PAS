import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Product"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: ()=>Get.toNamed('/product_detail', arguments: 1),
                child: Text("Product 1")
            ),
            ElevatedButton(
                onPressed: ()=>Get.toNamed('/product_detail', arguments: 2),
                child: Text("Product 2")
            ),
            ElevatedButton(
                onPressed: ()=>Get.toNamed('/product_detail', arguments: 3),
                child: Text("Product 3")
            ),
          ],
        ),
      ),
    );
  }
}
