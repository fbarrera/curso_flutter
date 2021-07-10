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
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: lColumn(),
              flex: 1,
            ),
            Expanded(
              child: rImage(),
              flex: 2,
            )
          ],
        ),
      )),
    );
  }
}

class lColumn extends StatelessWidget {
  const lColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          lChild1(),
          lChild2(),
          lChild3(),
          lChild4(),
        ],
      ),
    );
  }
}

class lChild1 extends StatelessWidget {
  const lChild1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(child: Text("Strawberry Parlova")),
      padding: EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.lightBlue[100],
          border: Border.all(
            color: Colors.black,
          )),
    );
  }
}

class lChild2 extends StatelessWidget {
  const lChild2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          "Parlova is a meringue-based dessert named after the Russian bailerine Anna Parlova. \nParlova features a crisp crust and soft, light inside, topped with fruit and whipped cream."),
      margin: const EdgeInsets.all(5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.lightBlue[100],
          border: Border.all(
            color: Colors.black,
          )),
    );
  }
}

class lChild3 extends StatelessWidget {
  const lChild3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Text("5 stars")
        ],
      ),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.lightBlue[100],
          border: Border.all(
            color: Colors.black,
          )),
    );
  }
}

class lChild4 extends StatelessWidget {
  const lChild4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.ac_unit),
              Text("PREP"),
              Text("15 min"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.ac_unit),
              Text("COOK"),
              Text("10 min"),
            ],
          ),
          Column(
            children: [
              Icon(Icons.ac_unit),
              Text("FEEDS"),
              Text("5 min"),
            ],
          ),
        ],
      ),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.lightBlue[100],
          border: Border.all(
            color: Colors.black,
          )),
    );
  }
}

class rImage extends StatelessWidget {
  const rImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          "https://i.pinimg.com/originals/7a/c6/a2/7ac6a2959ce0e70b023236a09f866da9.jpg"),
    );
  }
}
