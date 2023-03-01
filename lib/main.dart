import 'package:flutter/material.dart';
import 'package:fluttercalc/Display.dart';
import 'package:fluttercalc/operators/Add.dart';
import 'package:fluttercalc/operators/operator.dart';

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
    return MaterialApp(home: MainScreen());
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Display display = Display();
  
  var input = Display().getTextAsText();
  
  List<num> stack = [];

  List<List> history = [];


void _addToDisplay(String num)
{
  display.addToText(num);
  setState(() {
    input = display.getTextAsText();
  });
}

execute(Operator operator)
{
  operator.execuce();
  setState(() {
    stack;
  });
}

void _addToStack()
{
  setState(() {
    stack.add(display.getTextAsNum());
    input = "";
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("RPN Calculator")),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            color: Colors.white,
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 80,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
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
                                    border: Border.all(color: Colors.black)),
                                alignment: Alignment.center,
                                child: Text('$stack'),
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                height: 100,
                                width: 300,
                                child: OutlinedButton(
                                  onPressed: () {_addToStack();},
                                  child: Text(
                                    "ENTER",
                                    style: TextStyle(fontSize: 50),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: Scaffold(
                  body: Column(children: [
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("1");
                          },
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("2");
                          },
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("3");
                          },
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                          width: width,
                          height: height,
                          child: OutlinedButton(
                            onPressed: () {execute(Add(stack));},
                            child: Text(
                              "+",
                              style: TextStyle(fontSize: font),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("4");
                          },
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("5");
                          },
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("6");
                          },
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("7");
                          },
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("8");
                          },
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("9");
                          },
                          child: Text(
                            "9",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "/",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "UNDO",
                            style: TextStyle(fontSize: 21),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            Display().addToText(".");
                          },
                          child: Text(
                            ",",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {
                            _addToDisplay("0");
                          },
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "*",
                            style: TextStyle(fontSize: font),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ])),
            ),
          )
        ],
      ),
    );
  }
}
