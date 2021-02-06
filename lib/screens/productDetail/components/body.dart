import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:product_detail/models/product.dart';
import 'package:product_detail/screens/productDetail/components/colorselector.dart';
import 'package:product_detail/screens/productDetail/components/herocard.dart';
import 'package:product_detail/screens/productDetail/components/productsize.dart';
import 'package:product_detail/screens/productDetail/components/productspecification.dart';
import 'package:product_detail/screens/productDetail/components/promotionoffer.dart';
import 'package:product_detail/screens/productDetail/components/similarproduct.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var product = new Product(
        id: 1,
        name: "Full Sleeves Casual Shirt",
        picture: "",
        oldPrice: 1499.00,
        price: 66.00,
        description:
            "Designed with bold checks, this shirt is detailed with full sleeves, spread collar, patch pockets and button closure.",
        shortDescription: "Best fit, casual");
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: ListView(
              children: <Widget>[
                HeroCard(),
                PromotionOffer(),
                sections(product),
                spaceVertical(10),
                ProductSpecification(),
                spaceVertical(10),
                purchase(),
                spaceVertical(10),
                SimilarProduct(),
                spaceVertical(50),
                bottomDetail(),
                spaceVertical(10),
              ],
            )));
  }
}

///************** Hero   ***************************************************/

Widget bottomDetail() {
  return Container(
    child: ColorFiltered(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
        child: Image.asset("assets/icons/card.png")),
    //padding: EdgeInsets.only(right: 30, left: 30),
  );
}
/***** End */

///************ SECTIONS  *************************************************/

Widget sections(Product product) {
  return Container(
    padding: EdgeInsets.all(16),
    child: Column(
      children: <Widget>[
        description(product),
        spaceVertical(10),
        property(),
      ],
    ),
  );
}

Widget description(Product product) {
  return Text(
    product.description ?? product.name,
    textAlign: TextAlign.justify,
    style: TextStyle(height: 1.5, color: Color(0xFF6F8398)),
  );
}

Widget property() {
  return Container(
    //padding: EdgeInsets.only(right: 10, left: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "COLOR",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2F2F3E)),
            ),
            spaceVertical(10),
            ColorSelector(),
          ],
        ),
        ProductSize()
      ],
    ),
  );
}

/***** End */

///************** BOTTOM BUTTON ********************************************/
Widget purchase() {
  return Container(
    padding: EdgeInsets.all(16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          r"$95",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w100,
              color: Color(0xFF2F2F3E)),
        ),
        TextButton(
          child: Text(
            "ADD TO BAG",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Color(0xff383838),
            onSurface: Colors.grey,
          ),
          onPressed: () {},
        )
      ],
    ),
  );
}

/***** End */

///************** UTILITY WIDGET ********************************************/

Widget spaceVertical(double size) {
  return SizedBox(
    height: size,
  );
}

Widget spaceHorizontal(double size) {
  return SizedBox(
    width: size,
  );
}
/***** End */
