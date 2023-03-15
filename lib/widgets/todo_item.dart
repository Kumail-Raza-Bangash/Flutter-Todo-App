import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:todoapplication/constants/colors.dart';
import 'package:todoapplication/modal/todo.dart';
import '../widgets/todo_item.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem(
      {super.key,
      required this.todo,
      required this.onToDoChanged,
      required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
          onTap: () {
            onToDoChanged(todo);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: const Icon(Icons.delete),
              onPressed: () {
                onDeleteItem(todo.id);
              },
            ),
          )),
    );
  }
}
