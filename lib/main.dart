import 'package:flutter/material.dart';
import 'package:app1/cardquote.dart';
import 'package:app1/model.dart';

void main() => runApp(
      const MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final Quote quote;
  List<Quote> quotes = [
    Quote(text: 'fsf mks', author: 'ayoub'),
    Quote(text: 'fsm rabat', author: 'aly'),
    Quote(text: 'fsm mauritanya', author: 'rachid'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: quotes
              .map((quote) => Mycard(
                    quote: quote,
                    delete:(){ 
                      setState(() {
                        quotes.remove(quote);
                      });
                    }
                  ))
              .toList(),
        ),
      ),
    );
  }
}
