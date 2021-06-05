import 'package:flutter/material.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:provider/provider.dart';
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskText = '';
    return Consumer<TaskData>(
          builder: (context, model, child) {
            return Container(
              color: Color(0xff757575),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),),
                ),
                child: Column(
                  children: [
                    Text(
                      'Add Task',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextField(
                        autocorrect: true,
                        autofocus: true,
                        onChanged: (value) {
                          taskText = value;
                        },
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            labelText: 'Add a Task',
                            fillColor: Colors.grey,
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    MaterialButton(
                      child: Text(
                        'Add',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 15, horizontal: 110),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                              color: Colors.lightBlueAccent
                          )
                      ),
                      onPressed: () {
                        model.addTasks(taskText);
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            );
          }
      );
  }
}