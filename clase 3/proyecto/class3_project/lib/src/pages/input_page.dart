import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _llave = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text('El texto ingresado en el formulario'),
            Text('Nombre ${this._nombre}'),
            _nameInput('Nombre', 'Nombre de la persona', 100, Icons.person),
            _passwordInput('Contraseña', 'La llave', 100, Icons.lock),
          ],
        ),
      ),
    );
  }

  Widget _nameInput(
      String labelText, String fieldName, int fieldLength, IconData iconData) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        hintText: fieldName,
        counter:
            Text('Letras ${this._nombre.length}/${fieldLength.toString()}'),
        suffixIcon: Icon(iconData),
      ),
      maxLength: fieldLength,
      onChanged: (valor) {
        setState(() {
          this._nombre = valor;
        });
      },
    );
  }

  Widget _passwordInput(
      String labelText, String fieldName, int fieldLength, IconData iconData) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        hintText: fieldName,
        counter: Text('Letras ${this._llave.length}/${fieldLength.toString()}'),
        suffixIcon: Icon(iconData),
      ),
      maxLength: fieldLength,
      onChanged: (valor) {
        setState(() {
          this._llave = valor;
        });
      },
      obscureText: true,
    );
  }
}
