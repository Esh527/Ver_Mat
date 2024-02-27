import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ver_mat/ui/Home_Screen.dart';
import 'package:ver_mat/ui/SplashContent.dart';
import 'package:ver_mat/utils/colors_utils.dart';

class DashBoaard extends StatefulWidget {
  const DashBoaard({super.key});

  @override
  State<DashBoaard> createState() => _DashBoaardState();
}

class _DashBoaardState extends State<DashBoaard> {
  TapDownDetails? tapDownDetails;
  late TransformationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TransformationController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Versant™ 4 Skills Essential Test",
      "image": "images/Versant-img.jpg"
    },
    {"text": "Introduction", "image": "images/Introduction.JPG"},
    {"text": "Test Format", "image": "images/Test Format.JPG"},
    {"text": "Section-A-Repeat Sentence", "image": "images/Part-A.png"},
    {"text": "Section-B-Sentence Builds", "image": "images/Part-B.png"},
    {"text": "Section-C-Conversations", "image": "images/Part-C.png"},
    {"text": "Section-D-Sentence Completion", "image": "images/Part-D.png"},
    {"text": "Section-E-Dictation", "image": "images/Part-E.png"},
    {"text": "Section-F-Passage Reconstruction", "image": "images/Part-F.png"},
    {"text": "Number of Items", "image": "images/no-items.JPG"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000725),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: GestureDetector(
                    onDoubleTapDown: (details) => tapDownDetails = details,
                    onDoubleTap: () {
                      final position = tapDownDetails!.localPosition;
                      final double scale = 1.99;
                      final x = -position.dx * (scale - 1);
                      final y = -position.dy * (scale - 1);
                      final zoomed = Matrix4.identity()
                        ..translate(x, y)
                        ..scale(scale);
                      final value = controller.value.isIdentity()
                          ? zoomed
                          : Matrix4.identity();
                      controller.value = value;
                    },
                    child: InteractiveViewer(
                      clipBehavior: Clip.none,
                      transformationController: controller,
                      scaleEnabled: false,
                      panEnabled: false,
                      child: PageView.builder(
                          onPageChanged: (value) {
                            setState(() {
                              currentPage = value;
                            });
                          },
                          itemCount: splashData.length,
                          itemBuilder: (context, index) => SplashContent(
                                image: '${splashData[index]["image"]}',
                                text: '${splashData[index]['text']}',
                              )),
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      //buildDot()
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index),
                        ),
                      ),
                      Spacer(
                        flex: 4,
                      ),
                      //ElevatedButton(
                      // onPressed: () {
                      //  Navigator.push(
                      //     context,
                      //    MaterialPageRoute(
                      //     builder: (context) => Home()));
                      //  },
                      //child: Text(
                      // "Continue",
                      // style: TextStyle(fontFamily: "Sri"),
                      // )
                      //),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        icon: Icon(
                          Icons.start,
                          color: Colors.white,
                          size: 23,
                        ),
                        //padding: EdgeInsets.only(left: 250),
                      ),
                      Spacer()
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
  // Widget buildImage() = AspectRatio;(aspectRatio = 1,
  //child: Image.network(src)
  // ),

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      height: 7,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(3)),
      duration: kThemeAnimationDuration,
    );
  }
}
