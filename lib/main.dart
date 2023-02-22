import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Grid()
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


