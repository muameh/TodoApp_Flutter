import 'package:flutter/material.dart';
import 'package:flutter_projects/constants/colors.dart';

import '../model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onTodoChanged;
  final onDeleteItem;

  const TodoItem(
      {Key? key, required this.todo, required this.onTodoChanged, required this.onDeleteItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: ListTile(
            onTap: () {
              onTodoChanged(todo);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            leading: (todo.isDone ?? false)
                ? Icon(Icons.check_box, color: tdBlue)
                : Icon(Icons.check_box_outline_blank, color: tdBlue),
            title: Text(
              todo.title ?? "No Text",
              style: TextStyle(
                color: tdBlack,
                fontSize: 16,
                decoration: (todo.isDone ?? false) ? TextDecoration.lineThrough : null,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  color: tdRed,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    size: 18,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    onDeleteItem(todo.id ?? 0);
                  },
                )),
          ),
        ),
      ],
    );
  }
}
