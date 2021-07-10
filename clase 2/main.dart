import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child: Caja( Colors.amber, 1, 100.0 )),
              Expanded(child: Caja( Colors.red, 2, 100.0 )),
              Expanded(child: Container(
                child: Image.network("https://cdn.pixabay.com/photo/2015/11/16/16/28/bird-1045954__480.jpg"),
              )),
              
              
              
            ]
          ),
        )
      ),
    );
  }
}


// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(

//           // height: double.infinity,
//           width: double.infinity,
          
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//             // crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Caja( Colors.amber, 1, 100.0 ),
//               Caja( Colors.red, 2, 100.0 ),
//               Caja( Colors.blue, 3, 100.0 ),
              
//             ]
//           ),
//         )
//       ),
//     );
//   }
// }


class Caja extends StatelessWidget {

  Color color;
  int numero;
  double ancho;

  Caja( this.color, this.numero, this.ancho );

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.ancho,
        height: this.ancho,

        color: this.color,

        child: Center(
          child: Text( this.numero.toString() ),
        ),
    );
  }

}