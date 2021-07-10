import 'package:final_project/src/widgets/Button_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: _getLogo(),
                flex: 5,
              ),
              Expanded(
                child: SizedBox(),
              ),
              Expanded(
                child: Text(
                  'Heart Rate',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Text(
                    'Conoce el estado de tu corazón, con heart rate te alerta sobre anomalías en tu ritmo cardíaco',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
                flex: 4,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: ButtonWidget(
                    name: 'Enlaza tu reloj',
                    onPressed: () {
                      print('hola mundo!');
                    },
                    shadow: true,
                  ),
                ),
                flex: 2,
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getLogo() {
    return Container(
      child: Image.asset('assets/images/logo.png'),
    );
  }
}
