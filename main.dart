import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int _value =1;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 10.0,
        ),
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Icon(Icons.account_box_outlined),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder (),
                      labelText: "Email"
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  top: 12.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "phone number"),
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  top: 12.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email"),
                  ),
                ),

                Padding(padding: EdgeInsets.only(
                  top: 12.0,
                ),
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 18.0,
                        height: 1.5,
                        color: Colors.black
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Life Story'
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  top: 12.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password"),
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  top: 12.0,
                ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter password"),
                  ),
                ),

                Padding(padding: EdgeInsets.only( top: 12.0,
                ),
                  child: RaisedButton(
                    onPressed: (){},
                    child: Text("Submit form"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}