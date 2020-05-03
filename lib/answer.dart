import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function onPressed;

  Answer({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
