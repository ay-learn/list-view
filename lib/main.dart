import 'package:flutter/material.dart';
import 'package:app1/listview.dart';
 
void main() => runApp(
  const MaterialApp(
    home:MyApp(),
  ),
);
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Home(),
    );
  }
}

