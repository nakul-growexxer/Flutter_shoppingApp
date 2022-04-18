// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_import, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_test_1/page/cart_page.dart';

import '../controller/cart_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final Cart_Controller c = Get.put(Cart_Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Total"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total items",
                style: TextStyle(fontSize: 30, color: Colors.orangeAccent),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(
                () => Text(
                  "${c.sum.toString()}",
                  style: TextStyle(fontSize: 30, color: Colors.orangeAccent),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Back to cart",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
