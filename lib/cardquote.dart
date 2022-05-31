import 'package:flutter/material.dart';
import 'package:app1/model.dart';


class Mycard extends StatelessWidget {
    final Quote quote;
    const Mycard({Key? key, required this.quote}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(child: Text('${quote.text} -- ${quote.author}')),
    );
  }
}
