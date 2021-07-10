import 'package:flutter/material.dart';
import 'package:class3_project/src/widgets/home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Principal')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTileWidget(context, 'Alertas', Icons.taxi_alert, 'alerta'),
              ListTileWidget(context, 'Container Animado', Icons.animation,
                  'animatedContainer'),
              ListTileWidget(context, 'Avatar', Icons.person, 'avatar'),
              ListTileWidget(context, 'Entrada', Icons.input, 'input'),
            ],
          ),
        ),
      ),
    );
  }
}
//TODO: ListWidget transformado en instancia reutilizable ;)