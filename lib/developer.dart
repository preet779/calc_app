import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false)),
          backgroundColor: Colors.black54,
          title: Text("Developer"),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(65.0),
                child: Text(
                  "Name:ABC",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
