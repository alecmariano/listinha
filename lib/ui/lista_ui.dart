import 'package:flutter/material.dart';

class ListaUI extends StatelessWidget {
  const ListaUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
          padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
          child: Column(
            children: [
              CircleAvatar(
                child: Icon(
                  Icons.check,
                  color: Colors.lightGreen,
                ),
                backgroundColor: Colors.white,
              ),
              Text('Listinha')
            ],
          )),
    );
  }
}
