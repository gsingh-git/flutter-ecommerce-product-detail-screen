import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:product_detail/models/product.dart';
import 'package:product_detail/screens/productDetail/productdetail.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      )),
      child: Hero(
          tag: product.id,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => new ProductDetail(),
                      settings: RouteSettings(
                        arguments: product,
                      ),
                    )),
                child: GridTile(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              product.picture,
                              height: 200,
                              width: 195,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(product.name,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14)),
                              Text(product.shortDescription,
                                  style: TextStyle(
                                      color: Colors.black12, fontSize: 12)),
                              Text(product.price.toString(),
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14))
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                child: IconButton(
                                    alignment: Alignment.centerRight,
                                    icon: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black54,
                                    ),
                                    onPressed: () {
                                      //Navigator.pushNamed(context, "/wishlist");
                                    }),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )),
          )),
    ));
  }
}
