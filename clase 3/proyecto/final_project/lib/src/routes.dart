//import 'package:final_project/src/pages/home_page.dart';
import 'package:final_project/src/pages/login_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    //'/': (BuildContext context) => HomePage(),
    'login': (BuildContext context) => LoginPage(),
  };
}
