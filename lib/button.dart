import 'package:flutter/material.dart';

class calcbutton extends StatelessWidget {
  final String text;
  final int? fillColor;
  final Color? color;
  final double textSize;
  final Function callback;

  calcbutton({
    Key? key,
    required this.text,
    this.fillColor,
    this.color,
    this.textSize = 28,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0, left: 10, right: 10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
          ),
          onPressed: () => callback(text),
          child: Text(
            text,
            style: TextStyle(fontSize: 24, color: color),
          ),
        ),
      ),
    );
  }
}

class calcbtn2 extends StatelessWidget {
  final String text;
  final int? fillColor;
  final Color? color;
  final double textSize;
  final Function callback;

  calcbtn2({
    Key? key,
    required this.text,
    this.fillColor,
    this.color,
    this.textSize = 28,
    required this.callback,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0, left: 10, right: 10),
      child: SizedBox(
        width: 140,
        height: 70,
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
          onPressed: () => callback(text),
          child: Text(
            text,
            style: TextStyle(fontSize: 34, color: color),
          ),
        ),
      ),
    );
  }
}
