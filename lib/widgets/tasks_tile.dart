import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
 final bool isChecked;
 final String taskTitle;
 final Function(bool? x) checkboxCallback;

  const TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Colors.black,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallback,
      ),
    );
  }
}

