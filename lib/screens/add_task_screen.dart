import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {
  static String newTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),
              ),
              TextField(
                autofocus: true,
                // cursorColor: Colors.lightBlueAccent,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                  ),
                onChanged: (value) {
                  newTask = value;
                },
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).changeData(newTask);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
