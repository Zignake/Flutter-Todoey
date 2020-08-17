import 'package:flutter/material.dart';
import 'list_items.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return GestureDetector(
              onLongPress: () {
                taskData.deleteTask(task);
              },
              child: ListItems(
                item: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.toggleDone(task);
                },
              ),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
