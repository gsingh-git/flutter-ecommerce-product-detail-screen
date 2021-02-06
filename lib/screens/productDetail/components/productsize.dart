import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProductSize extends StatefulWidget {
  @override
  _ProductSizeState createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  List<String> sizeList = [
    "Small",
    "Xtra Small",
    "Medium",
    "Large",
    "Xtra Large"
  ];
  String selectSize;
  callme() {
    List<Widget> mywidget = List();
    sizeList.forEach((e) => mywidget.add(CupertinoActionSheetAction(
        child: Text(
          e,
          style: TextStyle(color: Colors.black54),
        ),
        onPressed: () {
          setState(() {
            selectSize = e;
          });
          Navigator.pop(context);
        })));
    return mywidget;
  }

  @override
  Widget build(BuildContext context) {
    if (selectSize == null) {
      selectSize = sizeList[0];
    }

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Size",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2F2F3E)),
          ),
          Container(
            child: Column(
              children: [
                GestureDetector(
                    onTap: () {
                      final action = Container(
                          child: CupertinoActionSheet(
                        title: Text("Select your size",
                            style: TextStyle(fontSize: 14)),
                        actions: callme(),
                        // cancelButton:
                        //     CupertinoActionSheetAction(
                        //         child: Text("Back"),
                        //         onPressed: () {
                        //           Navigator.pop(context);
                        //         })
                      ));
                      showCupertinoModalPopup(
                          context: context, builder: (context) => action);
                    },
                    child: Container(
                        alignment: Alignment(0.0, 0.0),
                        padding: EdgeInsets.only(
                          top: 10, //bottom: 10, left: 20, right: 20
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text(selectSize),
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                child: Icon(Icons.keyboard_arrow_down))
                          ],
                        ))),
              ],
            ),
          )
        ]);
  }
}
