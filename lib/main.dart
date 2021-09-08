import 'package:flutter/material.dart';
import 'package:listinha/model/task_data.dart';
import 'package:provider/provider.dart';
import 'view/lista_ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: ListaUI(),
      ),
    );
  }
}
