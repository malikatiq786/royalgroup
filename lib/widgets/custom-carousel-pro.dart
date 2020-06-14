import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselPro extends StatelessWidget {
  List getImages() {
    List images = [
      new AssetImage('assets/images/3.png'),
      new AssetImage('assets/images/2.png'),
      new AssetImage('assets/images/1.png'),
      new AssetImage('assets/images/4.png'),
    ];
    return images;
  }

  @override
  Widget build(BuildContext context) {
    return Carousel(
      borderRadius: true,
      boxFit: BoxFit.fill,
      autoplay: true,
      dotSize: 5.0,
      dotIncreaseSize: 0.0,
      dotBgColor: Colors.transparent,
      images: getImages(),
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );
  }
}
