import 'package:flutter/material.dart';

class ChipPage extends StatelessWidget {
  const ChipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chips = [
      FilterChip(
        label: Text("Rosa"),
        onSelected: (value) => this._mostrarBocadillo(context, "Rosa"),
      ),
      FilterChip(
        label: Text("Violeta"),
        onSelected: (value) => this._mostrarBocadillo(context, "Violeta"),
      ),
      FilterChip(
        label: Text("Lila"),
        onSelected: (value) => this._mostrarBocadillo(context, "Lila"),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Ficha'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => {
            ScaffoldMessenger.of(context).hideCurrentSnackBar(),
            Navigator.pop(context),
          },
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Wrap(
            children: [
              for (final chip in chips)
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: chip,
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _mostrarBocadillo(BuildContext context, String tipo) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Esto es un bocadillo $tipo :)'),
        action: SnackBarAction(
          label: 'Cerrar',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }
}
