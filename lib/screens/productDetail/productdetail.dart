import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'components/body.dart';

class ProductDetail extends StatefulWidget {
  static String routeName = "/details";
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String selected = "blue";
  bool favourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // backgroundColor: Colors.transparent,
      appBar: new AppBar(
        backgroundColor: Color(0xffaeaeae),
        //iconTheme: IconThemeData(color: Colors.white),
        brightness: Brightness.light,
        title: Text("shirt"),
        elevation: 0.1,
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: Body(),
    );
  }
}
