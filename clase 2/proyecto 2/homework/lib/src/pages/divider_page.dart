import 'package:flutter/material.dart';

class DividerPage extends StatelessWidget {
  const DividerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divisor'),
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 10,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 10,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orangeAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  flex: 1,
                ),
              ],
            )),
      ),
    );
  }
}
