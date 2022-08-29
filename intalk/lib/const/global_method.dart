
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalMethod{

  static navigatorTo({required String nameScreen}){
    Get.toNamed(nameScreen);
  }

  static navigatorOff({required String nameScreen}){
    Get.offNamed(nameScreen);
  }
}