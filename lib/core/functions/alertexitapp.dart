import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(title: "Exit", middleText: "You want to exit ? ", actions: [
    ElevatedButton(
      onPressed: () {
        exit(0);
      },
      child: Text("Confirm"),
    ),
    ElevatedButton(
      onPressed: () {
        Get.back();
      },
      child: Text("cancel"),
    ),
  ]);
  return Future.value(true);
}
