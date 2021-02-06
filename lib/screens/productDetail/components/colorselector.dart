import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ColorSelector extends StatefulWidget {
  @override
  _ColorSelectorState createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  String selected = "blue";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          ColorTicker(
              color: Colors.blue,
              selected: selected == "blue",
              selectedCallback: () {
                setState(() {
                  selected = "blue";
                });
              }),
          ColorTicker(
              color: Colors.green,
              selected: selected == "green",
              selectedCallback: () {
                setState(() {
                  selected = "green";
                });
              }),
          ColorTicker(
            color: Colors.yellow,
            selected: selected == "yellow",
            selectedCallback: () {
              setState(() {
                selected = "yellow";
              });
            },
          ),
          ColorTicker(
            color: Colors.pink,
            selected: selected == "pink",
            selectedCallback: () {
              setState(() {
                selected = "pink";
              });
            },
          ),
        ],
      ),
    );
  }
}

class ColorTicker extends StatelessWidget {
  final Color color;
  final bool selected;
  final VoidCallback selectedCallback;
  ColorTicker({this.color, this.selected, this.selectedCallback});

  @override
  Widget build(BuildContext context) {
    //print(selected);
    return GestureDetector(
        onTap: () {
          selectedCallback();
        },
        child: Container(
          padding: EdgeInsets.all(7),
          margin: EdgeInsets.all(5),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: color.withOpacity(0.7)),
          child:
              selected ? Image.asset("assets/icons/checker.png") : Container(),
        ));
  }
}
