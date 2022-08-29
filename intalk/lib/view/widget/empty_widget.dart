
import 'package:flutter/material.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';
import 'package:intalk/view/widget/buttons.dart';

class EmptyWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  final String nameButton;
  final Function() fct;
  const EmptyWidget({Key? key, required this.title, required this.subTitle, required this.imagePath, required this.nameButton, required this.fct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: widthScreen*0.05,),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: heightScreen*0.1,),
          Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: widthScreen*0.08,
                fontWeight: FontWeight.bold,
                color: Themes.greyishBrownColor
            ),),
          SizedBox(height: heightScreen*0.04,),
          Text(subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: widthScreen*0.05,
                fontWeight: FontWeight.normal,
                color: Themes.greyishBrownColor
            ),),
          Image.asset(imagePath,
              height: heightScreen*0.45),
          SizedBox(height: heightScreen*0.04,),
          AuthButton(
            nameButton: nameButton,
            colorButton: Themes.dodgerBlueColor,
            fct: fct,
          ),





        ],
      ),
    );
  }
}

