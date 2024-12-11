import 'package:flutter/material.dart';
import 'package:flutter_projects/constants/colors.dart';

class TodoItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      onTap: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      tileColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      leading: Icon(Icons.check_box, color: tdBlue),
      title: const Text(
        "Check emails",
        style: TextStyle(
          color: tdBlack,
          fontSize: 16,
          decoration: TextDecoration.lineThrough,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.delete,
              size: 18,
              color: Colors.white,
            ),
            onPressed: () {},
          )),
    ));
  }
}