import 'package:flutter/material.dart';

class DrawedBackground extends StatelessWidget {
  const DrawedBackground({
    Key key,
    @required this.imgSize,
    @required this.width,
    @required this.animation,
  }) : super(key: key);

  final double imgSize;
  final double width;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imgSize,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -45,
            height: imgSize,
            width: width,
            child: FadeTransition(
                opacity: animation,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.fill),
                  ),
                )),
          ),
          Positioned(
            height: imgSize,
            width: width + 30,
            child: FadeTransition(
                opacity: animation,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background-2.png"),
                        fit: BoxFit.fill),
                  ),
                )),
          )
        ],
      ),
    );
  }
}