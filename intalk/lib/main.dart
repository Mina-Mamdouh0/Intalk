import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intalk/route/routes.dart';
import 'package:intalk/view/screen/btm_bar.dart';
import 'package:intalk/view/screen/empty_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Antlak',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesApp.initialScreen,
      getPages: RoutesApp.listScreen,

    );
  }
}

