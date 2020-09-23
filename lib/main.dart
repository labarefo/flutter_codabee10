import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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

  String changed;
  String submitted;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new TextField(
              keyboardType: TextInputType.number,
              onChanged: (String string){
                setState(() {
                  changed = string;
                });
              },
              onSubmitted: (String string){
                setState(() {
                  submitted = string;
                });
              },
              decoration: new InputDecoration(
                  labelText: 'Entrez votre nom'
              ),
            ),
            new Text(changed ?? ''),
            new Text(submitted ?? '')
          ],
        )
      ),

    );
  }
}
