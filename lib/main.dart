import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return new MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = -1;
  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ocho",
    "nueve",
    "dietz"
  ];
  String defaultText = "Spanish numbers";

  void displaySNumbers() {
    setState(() {
      if (counter < 9) {
        counter += 1;
      } else {
        counter = 0;
      }
      defaultText = spanishNumbers[counter];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyStateFull App"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
            child: Column(
          children: [
            Text(defaultText, style: TextStyle(fontSize: 30.0)),
            Padding(padding: EdgeInsets.all(10.0)),
            Text((counter + 1).toString()),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: displaySNumbers,
        child: const Icon(Icons.plus_one),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
