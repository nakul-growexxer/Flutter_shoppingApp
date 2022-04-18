// ignore_for_file: prefer_const_constructors, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart_Controller extends GetxController {
  var card_1 = 1.obs;
  var card_2 = 1.obs;

  int get sum => card_1.value + card_2.value;

  increment_c1() {
    card_1.value++;
  }

  decrement_c1() {
    if (card_1.value <= 1) {
      Get.snackbar(
        "Orders",
        "Order item can not be less then one.",
        icon: Icon(Icons.warning),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 4),
      );
    } else {
      card_1.value--;
    }
  }

  increment_c2() {
    card_2.value++;
  }

  decrement_c2() {
    if (card_2.value <= 1) {
      Get.snackbar(
        "Orders",
        "Order item can not be less then one.",
        icon: Icon(Icons.warning),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 4),
      );
    } else {
      card_2.value--;
    }
  }
}
