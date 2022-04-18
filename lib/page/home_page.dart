// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:shop_test_1/page/cart_page.dart';
import 'package:shop_test_1/view/grid_view.dart';
import 'package:shop_test_1/view/list_view.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop App"),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(CartPage());
            },
            icon: Icon(Icons.shopping_bag),
          ),
        ],
      ),
      body: Grid_View(),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CartPage());
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.shopping_bag),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
