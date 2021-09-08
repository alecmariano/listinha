import 'package:flutter/material.dart';
import 'package:listinha/model/task_data.dart';
import 'package:listinha/widgets/app_container.dart';
import 'package:provider/provider.dart';

class TaskModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newItem = '';

    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: (MediaQuery.of(context).viewInsets.bottom + 20),
      ),
      child: Column(
        children: [
          Text(
            'Adicionar item',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightGreen,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightGreen),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightGreen),
              ),
            ),
            onChanged: (newText) {
              newItem = newText;
            },
          ),
          SizedBox(height: 20),
          FlatButton(
            child: Text(
              'Adicionar',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            color: Colors.lightGreen,
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(newItem);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
