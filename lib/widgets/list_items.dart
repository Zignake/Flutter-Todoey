import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  ListItems({this.item, this.isChecked ,this.checkboxCallback});

  final String item;
  final bool isChecked;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        item,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing:
      Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
        value: isChecked,
      ),
    );
  }
}