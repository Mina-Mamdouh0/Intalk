import 'package:flutter/material.dart';

class Unit{
  BuildContext context;
  Unit(this.context);
  Size get sizeScreen=>MediaQuery.of(context).size;
}