import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Bem vindo ao Contador'),
          ),
          body: Home()),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;

  void _changeCount(int value) {
    setState(() {
      _count += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/undraw_flutter.png",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          children: <Widget>[
            Text("CONTADOR = $_count",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 520.0),
                  child: FloatingActionButton(
                      onPressed: () {
                        _changeCount(-1);
                      },
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0, right: 10.0, top: 520.0),
                  child: FloatingActionButton(
                      onPressed: () {
                        _changeCount(1);
                      },
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      )),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
