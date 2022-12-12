import 'package:flutter/material.dart';

class drawerItem extends StatelessWidget {
  IconData icon;
  String text;
  GestureTapCallback onTap;

  drawerItem({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, color: Colors.white,),
          Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                text,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ))
        ],
      ),
      onTap: onTap,
    );
  }
}
