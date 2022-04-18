// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types,prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_test_1/controller/cart_controller.dart';
import 'package:shop_test_1/page/total_page.dart';

class Cart_View extends StatefulWidget {
  Cart_View({Key? key}) : super(key: key);
  //final Cart_Controller X = Get.put(Cart_Controller());
  @override
  State<Cart_View> createState() => _Cart_ViewState();
}

class _Cart_ViewState extends State<Cart_View> {
  final Cart_Controller c = Get.put(Cart_Controller());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
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
                  color: Colors.yellow,
                ),
                child: IconButton(
                  onPressed: () {
                    c.increment_c1();
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Obx(
                () => Text(
                  "${c.card_1.toString()}",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow,
                ),
                child: IconButton(
                  onPressed: () {
                    c.decrement_c1();
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Apple S7",
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
                  color: Colors.yellow,
                ),
                child: IconButton(
                  onPressed: () {
                    c.increment_c2();
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Obx(
                () => Text(
                  "${c.card_2.toString()}",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.yellow,
                ),
                child: IconButton(
                  onPressed: () {
                    c.decrement_c2();
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                width: 125,
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
                    Get.to(TotalPage());
                  },
                  child: Text(
                    "Total",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
