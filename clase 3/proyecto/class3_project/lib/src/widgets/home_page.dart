import 'package:flutter/material.dart';

Widget ListTileWidget(BuildContext context, String titleString,
    IconData leadingIcon, String navigatorString) {
  return ListTile(
    title: Text(titleString),
    leading: Icon(leadingIcon),
    trailing: Icon(Icons.keyboard_arrow_right),
    onTap: () {
      Navigator.pushNamed(context, navigatorString);
    },
  );
}
