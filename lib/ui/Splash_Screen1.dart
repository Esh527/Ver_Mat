// ignore_for_file: depend_on_referenced_packages

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ver_mat/firebase_services/splash_services.dart';

class Splash_Screen1 extends StatefulWidget {
  const Splash_Screen1({super.key});

  @override
  State<Splash_Screen1> createState() => _Splash_Screen1State();
}

class _Splash_Screen1State extends State<Splash_Screen1> {
  SplashServices Splash_Screen1 = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Splash_Screen1.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color((0xff000725)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/versant.png"),
                SizedBox(
                  height: 9,
                ),
                AnimatedTextKit(animatedTexts: [
                  WavyAnimatedText(
                    "Versant™ 4 Skills Essential Test",
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ]),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitCubeGrid(
                    color: Colors.pink,
                    size: 50.0,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AnimatedTextKit(animatedTexts: [
                    FadeAnimatedText(
                      'Online Study for everyone',
                      textStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 18,
                          color: Color(0xffffffff)),
                    )
                  ])
                ],
              ))
        ],
      )),
    );
  }
}
