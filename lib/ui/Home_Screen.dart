import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ver_mat/model/data.dart';
import 'package:ver_mat/ui/auth/sections_page.dart';
import 'package:ver_mat/utils/colors_utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000725),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmnxXtd3E9e9B7TcaEDTlDmLDdKXN5Ox3yCzoCo3k_Dg&s",
                    height: 110,
                    width: 510,
                  )
                ],
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Section(
                                      data: data[index],
                                    )));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38),
                        child: Container(
                          height: 300,
                          width: 300,
                          color: Colors.teal,
                          child: Stack(
                            children: [
                              Hero(
                                tag: data[index].secName,
                                child: Image.network(
                                  data[index].secImg,
                                  height: 400,
                                  width: 199,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 40,
                                  width: 300,
                                  color: Colors.blue.withOpacity(0.8),
                                  child: Center(
                                    child: AnimatedTextKit(
                                        totalRepeatCount: 40,
                                        animatedTexts: [
                                          FlickerAnimatedText(
                                              data[index].secName,
                                              textStyle: TextStyle(
                                                  color: Color(0xff000725),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold)),
                                        ]),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: 3,
            ),
            Center(
              child: Text(
                "Co-Powered by",
                style: TextStyle(color: Colors.white), //Wings International
              ),
            ),
            Center(
              child: AnimatedTextKit(totalRepeatCount: 40, animatedTexts: [
                TyperAnimatedText("Wings International",
                    textStyle: TextStyle(
                        color: Colors.amber,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
