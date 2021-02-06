import 'package:flutter/material.dart';

class OrderedListItem extends StatelessWidget {
  OrderedListItem(this.counter, this.text);
  final String counter;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("$counter "),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}
