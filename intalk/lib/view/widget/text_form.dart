
import 'package:flutter/material.dart';
import 'package:intalk/const/themes.dart';
import 'package:intalk/const/unit.dart';

class TextFieldForm extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final TextInputType inputType;
  final bool? obscure;
  final Function()? fctSuffixIcon;
  final bool? isUnderBorder;
  final IconData? prefixIcon;
  const TextFieldForm({Key? key, required this.controller, this.validator, required this.hintText, this.obscure, this.fctSuffixIcon, required this.inputType, this.isUnderBorder, this.prefixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Unit unit=Unit(context);
    double heightScreen=unit.sizeScreen.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical:heightScreen*0.01),
      child: TextFormField(
        controller:controller,
        obscureText: obscure??false,
        keyboardType: inputType,
        validator:validator,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          enabledBorder: isUnderBorder??false?
          UnderlineInputBorder(
          borderSide:BorderSide(
    color:Colors.grey.shade400,
    )):
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:  BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          focusedBorder: isUnderBorder??false?
          UnderlineInputBorder(
            borderSide:BorderSide(
            color: Themes.dodgerBlueColor,
          ),
          ):
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:  BorderSide(
              color: Themes.dodgerBlueColor,
            ),
          ),
          prefixIcon: prefixIcon!=null?
          Icon(prefixIcon):null,
          suffixIcon: obscure!=null?IconButton(
              onPressed: fctSuffixIcon,
              icon: Icon(obscure!?Icons.visibility:Icons.visibility_off)):null


        ),
      ),
    );
  }
}


class SelectedFormFiled extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final List<DropdownMenuItem<String>> list;
  final String? Function(String?)? validator;
  final IconData? prefixIcon;
  const SelectedFormFiled({Key? key, required this.controller, required this.hintText, required this.list, this.validator, this.prefixIcon}) : super(key: key);


  @override
  Widget build(BuildContext context) {  Unit unit=Unit(context);
  double heightScreen=unit.sizeScreen.height;
    return
      Container(
        margin: EdgeInsets.symmetric(vertical:heightScreen*0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey.shade400
          )
        ),
        child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              validator:validator,
              onTap: (){
                DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      onChanged: (value) {},
                      items:  list,
                    ));
              },
              decoration:   InputDecoration(
                enabled: false,
                  hintText: hintText,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                prefixIcon: prefixIcon!=null?Icon(prefixIcon):null

              ),
            ),
          ),
          DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                onChanged: (value) {},
                items:  list,
              ))
        ],
    ),
      );
  }
}

