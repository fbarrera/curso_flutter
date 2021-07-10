import 'package:flutter/material.dart';
import 'package:class3_project/src/pages/input_page.dart';
import 'package:class3_project/src/pages/avatar_page.dart';
import 'package:class3_project/src/pages/alert_page.dart';
import 'package:class3_project/src/pages/home_page.dart';
import 'package:class3_project/src/pages/animated_container_page.dart';

Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    '/': (BuildContext context) => HomePage(),
    'alerta': (BuildContext context) => AlertPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'input': (BuildContext context) => InputPage(),
  };
}
