import 'package:flutter/material.dart';
import 'package:homework/src/pages/alert_page.dart';
import 'package:homework/src/pages/chip_page.dart';
import 'package:homework/src/pages/divider_page.dart';
import 'package:homework/src/pages/hero_page.dart';
import 'package:homework/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StructureWidget(),
    );
  }
}

class StructureWidget extends StatelessWidget {
  const StructureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => HomePage(),
          'alerta': (BuildContext context) => AlertPage(),
          'ficha': (BuildContext context) => ChipPage(),
          'heroe': (BuildContext context) => HeroPage(),
          'divisor': (BuildContext context) => DividerPage(),
        });
  }
}
