import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "Versant™",
          style: TextStyle(
              fontSize: 29,
              fontFamily: "Sri",
              color: Colors.pink,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text, //"Welcome to Versant™ 4 Skills Essential Test"
          style:
              TextStyle(fontFamily: "Sri", fontSize: 14, color: Colors.white),
        ),
        Spacer(
          flex: 3,
        ),
        Image.asset(
          image, //"images/versant.png"
          height: 203,
          width: 203,
        )
      ],
    );
  }
}
