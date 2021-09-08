import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:listinha/model/task_data.dart';
import 'package:listinha/widgets/app_container.dart';
import 'package:listinha/widgets/task_list.dart';
import 'package:listinha/widgets/task_modal.dart';
import 'package:provider/provider.dart';

class ListaUI extends StatelessWidget {
  const ListaUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(child: TaskModal()),
          );
        },
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
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
                  '${Provider.of<TaskData>(context).tasks.length} Itens',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: AppContainer(
              body: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
