

import 'package:flutter/material.dart';
import 'package:basic/todo.dart';
class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem({Key? key, required this.todo, required this.onToDoChanged, required this.onDeleteItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print('clicked on it');
             onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        contentPadding: EdgeInsets.symmetric(horizontal:20, vertical:5),
        tileColor: Colors.lightGreen.shade300,
        leading:  Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,),
        title: Text(
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: todo.isDone? TextDecoration.lineThrough: null,
          ),
          todo.todoText!,
        ),
        trailing: Container(
          padding: EdgeInsets.all(0.0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
             // print('deleted');
              onDeleteItem(todo.id);
            },
          ),
        ),

      )
    );
  }
}