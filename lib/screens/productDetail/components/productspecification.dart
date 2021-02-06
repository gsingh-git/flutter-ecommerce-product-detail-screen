import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:product_detail/components/orderedlistitem.dart';

class ProductSpecification extends StatefulWidget {
  @override
  _ProductSpecificationState createState() => _ProductSpecificationState();
}

class _ProductSpecificationState extends State<ProductSpecification> {
  getDescription() {
    var texts = [
      "Type : Shirts",
      "Neckline : Spread collar",
      "Sleeve Length : Full Sleeves",
      "Care Instructions : Machine Wash",
      "Design : Checked",
      "Style : Casual",
      "Fabric : Cotton",
      "Model Wears : Size S,has Height 5'7 and Chest 33"
    ];
    var widgetList = <Widget>[];
    widgetList.add(Text(
        'Look beyond chic by teaming up with solid denim shorts and sneakers.'));
    widgetList.add(SizedBox(height: 15.0));
    int counter = 0;
    for (var text in texts) {
      // Add list item
      counter++;
      widgetList.add(OrderedListItem("*", text));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }
    return widgetList;
  }

  getDetails() {
    var texts = [
      "Country of Origin : INDIA",
      "Return Policy : This product is returnable within 30 days of delivery",
      "Manufactured/Imported By : Lifestyle Int Pvt Ltd",
      "Net Quantity : 1"
    ];
    var widgetList = <Widget>[];
    widgetList.add(Text('Details of the product is as per below.'));
    widgetList.add(SizedBox(height: 15.0));
    int counter = 0;
    for (var text in texts) {
      // Add list item
      counter++;
      widgetList.add(OrderedListItem("*", text));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }
    return widgetList;
  }

  void _showDescriptionModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            child: SingleChildScrollView(
              child: Column(
                children: getDescription(),
              ),
            ),
            padding: EdgeInsets.all(40.0),
          );
        });
  }

  void _showDetailModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            child: SingleChildScrollView(
              child: Column(
                children: getDetails(),
              ),
            ),
            padding: EdgeInsets.all(40.0),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        //padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                _showDescriptionModalSheet();
              },
              child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1.0),
                        top: BorderSide(color: Colors.black, width: 1.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Description'),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ],
                  )
                  //const Center(child: Text('Description')),
                  ),
            ),
            GestureDetector(
              onTap: () {
                _showDetailModalSheet();
              },
              child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              //                   <--- left side
                              color: Colors.black,
                              width: 1.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Details'),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ],
                  )
                  //const Center(child: Text('Description')),
                  ),
            ),
          ],
        ));
  }
}
