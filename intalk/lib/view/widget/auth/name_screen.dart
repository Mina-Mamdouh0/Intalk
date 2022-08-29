
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';

class NameScreen extends StatelessWidget {
  final String nameScreen;
  final bool isBackButton;
  const NameScreen({Key? key, required this.nameScreen, required this.isBackButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: isBackButton?heightScreen*0.09:heightScreen*0.1,),
        isBackButton?
        InkWell(
          onTap: ()=>Get.back(),
          child: Icon(Icons.arrow_back_ios_outlined,
            color: Themes.greyishBrownColor,size: widthScreen*0.08,),
        ):Container(),
        isBackButton?SizedBox(height: heightScreen*0.02,):Container(),
        Text(nameScreen,
          style: TextStyle(
              fontSize: widthScreen*0.06,
              fontWeight: FontWeight.bold,
              color: Themes.greyishBrownColor
          ),),
        SizedBox(height: heightScreen*0.05,),
      ],
    );
  }
}
