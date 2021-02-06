import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:product_detail/components/productcard.dart';
import 'package:product_detail/models/product.dart';

class SimilarProduct extends StatefulWidget {
  @override
  _SimilarProductState createState() => _SimilarProductState();
}

class _SimilarProductState extends State<SimilarProduct> {
  var productList = [
    new Product(
        id: 1,
        name: "Casual Shirt",
        picture: "assets/images/p1.jpg",
        oldPrice: 1499.00,
        price: 66.00,
        description:
            "this is test description. this is test description. this is test description.",
        shortDescription: "Best fit, casual"),
    new Product(
        id: 2,
        name: "Casual Shirt",
        picture: "assets/images/p2.jpg",
        oldPrice: 1499.00,
        price: 57.00,
        description:
            "this is test description. this is test description. this is test description.",
        shortDescription: "Best fit, casual"),
    new Product(
        id: 3,
        name: "Casual Shirt",
        picture: "assets/images/p3.jpg",
        oldPrice: 1499.00,
        price: 88.00,
        description:
            "this is test description. this is test description. this is test description.",
        shortDescription: "Best fit, casual"),
    new Product(
        id: 4,
        name: "Casual Shirt",
        picture: "assets/images/p4.jpg",
        oldPrice: 1499.00,
        price: 59.00,
        description:
            "this is test description. this is test description. this is test description.",
        shortDescription: "Best fit, casual"),
    new Product(
        id: 5,
        name: "Casual Shirt",
        picture: "assets/images/p5.jpg",
        oldPrice: 1499.00,
        price: 49.00,
        description:
            "this is test description. this is test description. this is test description.",
        shortDescription: "Best fit, casual")
  ];

  getProductList() {
    List<Widget> mywidget = List();
    productList.forEach((e) => mywidget.add(ProductCard(
          product: e,
        )));
    productList.forEach((e) => mywidget.add(ProductCard(
          product: e,
        )));
    return mywidget;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "You may be intrested in",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                //onTap: press,
                child: Text(
                  "See More",
                  style: TextStyle(color: Color(0xFFBBBBBB)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: getProductList(),
          ),
        ),
      ],
    );
  }
}
