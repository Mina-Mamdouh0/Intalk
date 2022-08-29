
import 'package:flutter/material.dart';
import 'package:intalk/const/unit.dart';

class AuthButton extends StatelessWidget {
  final IconData? icon;
  final String nameButton;
  final Color colorButton;
  final Function() fct;
  const AuthButton({Key? key,this.icon, required this.nameButton, required this.colorButton, required this.fct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double widthScreen=unit.sizeScreen.width;
    double heightScreen=unit.sizeScreen.height;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:heightScreen*0.01),
      child: ElevatedButton(onPressed: fct,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorButton),
              shape: MaterialStateProperty.all(
                const  RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              padding: MaterialStateProperty.all(  EdgeInsets.symmetric(vertical: heightScreen*0.02,))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon==null?Container():Icon(icon,color: Colors.white,size: widthScreen*0.06),
              icon!=null?SizedBox(width: widthScreen*0.05,):Container(),
              Text(nameButton,
                style:  TextStyle(
                    color: Colors.white,
                    fontSize: widthScreen*0.05,
                  fontWeight:FontWeight.normal,
                ),)
            ],
          )),
    );
  }
}
