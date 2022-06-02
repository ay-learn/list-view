import 'package:app1/model.dart';
import 'package:flutter/material.dart';

class Mycard extends StatefulWidget {
  final Quote quote;
  final VoidCallback? delete;
  const Mycard({Key? key, required this.quote, required this.delete})
      : super(key: key);

  @override
  State<Mycard> createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('${widget.quote.text} -- ${widget.quote.author}'),
            const SizedBox(height: 8),
            ElevatedButton.icon(
                onPressed: () => widget.delete,
                icon: const Icon(Icons.delete),
                label: const Text('delete quote'))
          ],
        ),
      ),
    );
  }
}
