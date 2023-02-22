import 'package:flutter/material.dart';
import 'package:fluttercalc/Display.dart';
import 'package:fluttercalc/operators/Add.dart';

void main() {
  runApp(const MyApp());
}
final double padding = 5;
final double height = 90;
final double width = 90;
final double font = 50;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("RPN Calculator")),
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              color: Colors.white,
            ),
            Expanded
              (
                flex: 2,
                child: Container(width: double.infinity,
            child: Header(),
            ),
            ),

        Expanded
          (
          flex: 3,
          child: Container(width: double.infinity,
            child: Grid(),
          ), )],
        ),
      )
    );
  }
}


class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);
  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column
          (children:
        [
          ExpandedRow(),
          ExpandedRow2(),
          ExpandedRow3(),
          ExpandedRow4(),
        ]));
  }
}

Padding ExpandedRow() {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: Row(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {
              Display().addToText("1");
            },
            child: Text("1", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {
              Display().addToText("2");
            },
            child: Text("2", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {
              Display().addToText("3");
            },
            child: Text("3", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
            width: width,
            height: height,
            child: OutlinedButton(
              onPressed: () {},
              child: Text("+", style: TextStyle(fontSize: font),),
            ))
      ],
    ),
  );
}

Padding ExpandedRow2() {
  return Padding(
    padding:  EdgeInsets.all(padding),
    child: Row(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {Display().addToText("4");},
            child: Text("4", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {Display().addToText("5");},
            child: Text("5", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {Display().addToText("6");},
            child: Text("6", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {},
            child: Text("-", style: TextStyle(fontSize: font),),
          ),
        )
      ],
    ),
  );
}

Padding ExpandedRow3() {
  return Padding(
    padding:  EdgeInsets.all(padding),
    child: Row(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {Display().addToText("7");},
            child: Text("7", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {Display().addToText("8");},
            child: Text("8", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {Display().addToText("9");},
            child: Text("9", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {},
            child: Text("/", style: TextStyle(fontSize: font),),
          ),
        )
      ],
    ),
  );
}

Padding ExpandedRow4() {
  return Padding(
    padding:  EdgeInsets.all(padding),
    child: Row(
      children: [
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {},
            child: Text("UNDO", style: TextStyle(fontSize: 21),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {Display().addToText(".");},
            child: Text(",", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {Display().addToText("0");},
            child: Text("0", style: TextStyle(fontSize: font),),
          ),
        ),
        SizedBox(
          width: width,
          height: height,
          child: OutlinedButton(
            onPressed: () {},
            child: Text("*", style: TextStyle(fontSize: font),),
          ),
        )
      ],
    ),
  );
}

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => HeaderWidget();
}

class HeaderWidget extends State<Header> {
var input = Display().getTextAsText();
List<num> stack = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget> 
        [
          Expanded(child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                SizedBox(
                  height: 80,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                    ),
                    alignment: Alignment.center,
                    child: Text(input),
                  ),
                ),
                SizedBox(
                  height: 80,
                  width: 400,
                  child: Container(
                    padding: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                     ),
                    alignment: Alignment.center,
                    child: Text(stack.toString()),
                  ),
                ),
                Container(
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("ENTER", style: TextStyle(fontSize: 50),),
                    ),
                  ),
                ),
              ],
            ),
          ),)

        ],
      ),

    );
  }
}


