import 'dart:ui';

import 'package:flutter/material.dart';

class ListaUI extends StatelessWidget {
  const ListaUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding:
                  EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.check,
                      color: Colors.lightGreen,
                      size: 50,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Listinha',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: ''),
                  ),
                  Text(
                    '3 Itens',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              )),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Teste'),
                    trailing: Checkbox(
                      value: false,
                      onChanged: null,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
