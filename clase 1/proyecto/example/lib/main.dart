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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          width: double.infinity,
          height: 60,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 3,
              vertical: 3,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    Container(
                      child: Text('Call'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.location_history,
                      color: Colors.blue,
                    ),
                    Container(
                      child: Text('Location'),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    Container(
                      child: Text('Share'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
