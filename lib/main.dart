import 'package:calc_app/button.dart';
import 'package:flutter/material.dart';

import 'developer.dart';

void main() {
  runApp(const myapp2());
}

class myapp2 extends StatelessWidget {
  const myapp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: calc(),
    );
  }
}

class calc extends StatefulWidget {
  const calc({Key? key}) : super(key: key);

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  int firstnum = 0, secondnum = 0;
  String history = '';
  String res = '', operation = '';
  String texttodisplay = '';

  void btnonclick(String btnvalue) {
    print(btnvalue);
    if (btnvalue == 'c') {
      texttodisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
    } else if (btnvalue == 'AC') {
      texttodisplay = '';
      firstnum = 0;
      secondnum = 0;
      res = '';
      history = '';
    } else if (btnvalue == '<') {
      setState(() {
        res = texttodisplay.substring(0, texttodisplay.length - 1);
      });
    } else if (btnvalue == '+/-') {
      if (texttodisplay[0] != '-') {
        res = '-' + texttodisplay;
      } else {
        res = texttodisplay.substring(1);
      }
    } else if (btnvalue == '+' ||
        btnvalue == '-' ||
        btnvalue == 'x' ||
        btnvalue == '/') {
      firstnum = int.parse(texttodisplay);
      res = '';
      operation = btnvalue;
    } else if (btnvalue == '=') {
      secondnum = int.parse(texttodisplay);
      if (operation == '+') {
        res = (firstnum + secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '-') {
        res = (firstnum - secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == 'x') {
        res = (firstnum * secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
      if (operation == '/') {
        res = (firstnum / secondnum).toString();
        history =
            firstnum.toString() + operation.toString() + secondnum.toString();
      }
    } else {
      res = int.parse(texttodisplay + btnvalue).toString();
    }
    setState(() {
      texttodisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.black54,
        title: Text("Calculator"),
      ),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 24),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => page2(),
              ));
            },
            leading: Icon(Icons.people),
            title: Text("Developer"),
          )
        ]),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: TextStyle(fontSize: 24, color: Colors.grey.shade50),
                  ),
                ),
                alignment: Alignment(1, 1),
              ),
              Container(
                width: double.maxFinite,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    texttodisplay,
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                ),
                alignment: Alignment(1, 1),
              ),
              Row(children: [
                calcbutton(
                  text: "AC",
                  color: Colors.amber,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "C",
                  color: Colors.amber,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "<",
                  color: Colors.amber,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "/",
                  color: Colors.amber,
                  callback: btnonclick,
                )
              ]),
              Row(children: [
                calcbutton(
                  text: "1",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "2",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "3",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "+",
                  color: Colors.amber,
                  callback: btnonclick,
                )
              ]),
              Row(children: [
                calcbutton(
                  text: "4",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "5",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "6",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "-",
                  color: Colors.amber,
                  callback: btnonclick,
                )
              ]),
              Row(children: [
                calcbutton(
                  text: "7",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "8",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "9",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "x",
                  color: Colors.amber,
                  callback: btnonclick,
                )
              ]),
              Row(children: [
                calcbutton(
                  text: "0",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbutton(
                  text: "00",
                  color: Colors.black54,
                  callback: btnonclick,
                ),
                calcbtn2(
                  text: "=",
                  color: Colors.amber,
                  callback: btnonclick,
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
