import 'package:flutter/material.dart';
import 'package:fluttercalc/Display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Header()
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
        body: Column(children:
        [ExpandedRow(),
          buildRow_flex(),
        ]));
  }
}

Row buildRow_flex() {
  return Row(children: [
    Flexible(
        flex: 1,
        child:Container(

          height: 100,
          color: Colors.blue,
        ))
    ,
    Flexible(
        child: Container(
          height: 100,
          color: Colors.green,
        )),
    Flexible(
      child:Container(
        height: 100,
        color: Colors.red,
      ),)]);
}

Row ExpandedRow() {
  return Row(
    children: [
      Container(
        child: OutlinedButton(onPressed: () {  }, child: Text("1"),
        ),
      ),
      Expanded(
        child: OutlinedButton(
          onPressed: () {},
          child: Text("2"),
        ),
      ),
      Expanded(
        child: OutlinedButton(
          onPressed: () {},
          child: Text("3"),
        ),
      )
    ],
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
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  alignment: Alignment.center,
                  child: Text("420"),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                   ),
                  alignment: Alignment.center,
                  child: Text("[10.0][40.5][20.1]"),
                )
              ],
            ),
          ))
        ], 
      ),
    );
  }
}


