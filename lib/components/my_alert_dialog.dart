import 'package:flutter/material.dart';

class MyAlertBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  final String hintText;

  const MyAlertBox({
      super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel, 
      required this.hintText,
      });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      content: TextField(
        controller: controller,
        style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        decoration:  InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: onSave,
          child: Text(
            "Save",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.black,
        ),
        MaterialButton(
          onPressed: onCancel,
          child: Text(
            "Cancel",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.black,
        ),
      ],
    );
  }
}
