import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HeroCard extends StatefulWidget {
  // final Product product;
  // const HeroCard ({ Key key, this.product }): super(key: key);
  @override
  _HeroCardState createState() => _HeroCardState();
}

class _HeroCardState extends State<HeroCard> {
  @override
  Widget build(BuildContext context) {
    var favourite = true;
    return ClipPath(
        child: Stack(
          children: <Widget>[
            imageCarousel(),
            Positioned(
              child: FloatingActionButton(
                  elevation: 2,
                  child: Image.asset(
                    favourite
                        ? "assets/icons/heart_icon.png"
                        : "assets/icons/heart_icon_disabled.png",
                    width: 30,
                    height: 30,
                  ),
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite = !favourite;
                    });
                  }),
              bottom: 20,
              left: 20,
            ),
          ],
        ),
        clipper: BottomWaveClipper());
  }
}

Widget imageCarousel() {
  return SizedBox(
    height: 500.0,
    width: double.infinity,
    //decoration: BoxDecoration(color: Colors.white),
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/images/1.jpg'),
        AssetImage('assets/images/2.jpg'),
        AssetImage('assets/images/3.jpg'),
        AssetImage('assets/images/4.jpg'),
        AssetImage('assets/images/5.jpg')
      ],
      autoplay: true,
      animationCurve: Curves.fastLinearToSlowEaseIn,
      animationDuration: Duration(milliseconds: 1000),
      showIndicator: true,
      //dotSize: 4.0,
      //dotIncreaseSize: 5.0,
      dotBgColor: Colors.transparent,
      //dotColor: Colors.black54,
      //dotPosition: DotPosition.bottomCenter,
      indicatorBgPadding: 0,
    ),
  );
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
