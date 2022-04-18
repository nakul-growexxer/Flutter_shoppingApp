// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shop_test_1/view/cart_view.dart';
import 'package:shop_test_1/view/grid_view.dart';
import 'package:shop_test_1/view/list_view.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop App Cart"),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.card_giftcard),
          ),
        ],
      ),
      body: Cart_View(),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.payment),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
