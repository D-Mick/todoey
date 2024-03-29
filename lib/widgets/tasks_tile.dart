import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
 final bool isChecked;
 final String taskTitle;
 final Function(bool? x) checkboxCallback;
 final Function() longPressCallback;

  const TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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

