import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://francisforte.cl/avatar.jpg'),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Hola Francisco!');
            },
            child: Container(
              padding: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('FB'),
                //backgroundColor: Colors.amber,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: FadeInImage(
            fadeInDuration: Duration(milliseconds: 200),
            fadeInCurve: Curves.easeInOut,
            image: NetworkImage('https://francisforte.cl/logo.png'),
            placeholder: AssetImage('assets/loading.gif'),
          ),
        ),
      ),
    );
  }
}
