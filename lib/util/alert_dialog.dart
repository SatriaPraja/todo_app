import 'package:flutter/material.dart';
import 'package:todo_app/util/mybutton.dart';

class alertDialog extends StatelessWidget {
  final controller;
  VoidCallback onsave;
  VoidCallback oncancel;
  alertDialog({
    super.key,
    required this.controller,
    required this.onsave,
    required this.oncancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get input user

            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',
              ),
            ),

            //button save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                myButton(
                  text: 'Save',
                  onpressed: onsave,
                ),
                SizedBox(width: 10),
                myButton(
                  text: 'Cancel',
                  onpressed: oncancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
