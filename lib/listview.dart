import 'package:flutter/material.dart';
import 'package:app1/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    List<Quote> list=[Quote(text: 'll', author: '') ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
          Text('ayoub'), 
        ],
    );
  }
}
