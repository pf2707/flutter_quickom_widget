import 'package:flutter/material.dart';
import 'package:flutter_quickom_widget/flutter_quickom_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quickom'),
      ),
      body: Center(
        child: SizedBox(
          // width: 200, height: 200,
          child: FlutterQuickomWidget(width: 300, height: 500,),
        )
      ),
    );
  }
}
