// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_test_1/controller/cart_controller.dart';

class Cart_View extends StatefulWidget {
  Cart_View({Key? key}) : super(key: key);
  final Cart_Controller c = Get.put(Cart_Controller());
  @override
  State<Cart_View> createState() => _Cart_ViewState();
}

class _Cart_ViewState extends State<Cart_View> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Text(
                "OnePlus Watch",
                style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.redAccent,
                ),
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.redAccent,
                ),
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
