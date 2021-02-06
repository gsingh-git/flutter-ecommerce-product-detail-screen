import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PromotionOffer extends StatefulWidget {
  @override
  _PromotionOfferState createState() => _PromotionOfferState();
}

class _PromotionOfferState extends State<PromotionOffer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.red[100],
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text("PROMOTION OFFER",
                style: TextStyle(
                  //backgroundColor: Colors.red[100],
                  color: Colors.red,
                  fontSize: 10,
                ),
                softWrap: true),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    "Extra 10% off on shopping worth 149 and above.                                         " +
                        "Use Code: STEAL10",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
