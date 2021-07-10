import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heroe'),
      ),
      body: SafeArea(
        child: Center(
          child: Hero(
            tag: 'menu-hero',
            child: Image.network(
              "https://francisforte.cl/moraine.jpg",
              scale: 0.1,
            ),
          ),
        ),
      ),
    );
  }
}
