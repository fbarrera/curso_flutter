import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.greenAccent;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Demo'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(
            milliseconds: 400,
          ),
          curve: Curves.fastOutSlowIn,
          width: this._width,
          height: this._height,
          decoration: BoxDecoration(
            borderRadius: this._borderRadiusGeometry,
            color: this._color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle),
        onPressed: () {
          _cambioFigura(size);
        },
      ),
    );
  }

  double _randomValue(Random seed, double minValue, double maxValue) {
    return minValue + seed.nextDouble() * (maxValue - minValue);
  }

  void _cambioFigura(Size size) {
    final Random rD = new Random();
    setState(() {
      this._width = _randomValue(rD, 25, size.width);
      this._height = _randomValue(rD, 25, size.height);
      this._color = Color.fromRGBO(
        _randomValue(rD, 0, 255).toInt(),
        _randomValue(rD, 0, 255).toInt(),
        _randomValue(rD, 0, 255).toInt(),
        1,
      );
      this._borderRadiusGeometry = BorderRadius.circular(
        _randomValue(rD, 0, (size.width + size.height) / 10),
      );
    });
  }
}
