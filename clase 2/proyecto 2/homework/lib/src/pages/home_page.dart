import 'package:flutter/material.dart';

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
              ListTile(
                title: Text('Alertas'),
                leading: Icon(Icons.notifications),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, 'alerta');
                },
              ),
              ListTile(
                title: Text('Fichas'),
                leading: Icon(Icons.notifications_active_rounded),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, 'ficha');
                },
              ),
              ListTile(
                title: Text('Heroes'),
                leading: Hero(
                  child: Image.network(
                    "https://francisforte.cl/moraine.jpg",
                    scale: 1,
                  ),
                  tag: 'menu-hero',
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, 'heroe');
                },
              ),
              ListTile(
                title: Text('Divisor'),
                leading: Icon(Icons.line_weight),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, 'divisor');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
