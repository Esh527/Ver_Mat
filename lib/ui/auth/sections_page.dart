//import 'dart:html';
//import 'dart:html';
import 'package:ver_mat/model/LandScapePage.dart';
import 'package:ver_mat/model/data.dart';
import 'package:ver_mat/model/sections.dart';

import 'package:flutter/material.dart';
import 'package:ver_mat/model/aboutus.dart';
import 'package:ver_mat/model/data.dart';
import 'package:ver_mat/ui/Home_Screen.dart';
import 'package:ver_mat/ui/auth/about_us.dart';
import 'package:ver_mat/ui/auth/login_screen.dart';
import 'package:ver_mat/ui/home.dart';
import 'package:ver_mat/utils/colors_utils.dart';
import 'package:ver_mat/utils/utils.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:video_player/video_player.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Section extends StatefulWidget {
  final Data data;
  Section({required this.data});

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  late VideoPlayerController _controller;
  int index = 0;

  void _playVideo({int index = 0, bool init = false}) {
    var networkVideos1dataone = widget.data.networkVideos1;

    if (index < 0 || index >= networkVideos1dataone.length) return;

    _controller =
        VideoPlayerController.asset(networkVideos1dataone[index].videoUrl)
          ..addListener(() => setState(() {}))
          ..setLooping(false)
          ..initialize().then((value) => _controller.play());
  }

  _videoDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(3, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _playVideo(init: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    _controller.pause();
    super.dispose();
  }

  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(186, 228, 5, 209),
        title: Text(
          widget.data.secName,
          style: TextStyle(color: Colors.white, fontSize: 19),
        ),
        actions: [
          IconButton(
            onPressed: () {
              auth.signOut().then((value) {
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()))
                    .onError((error, stackTrace) {
                  Utiles().toastMessage(error.toString());
                });
              });
            },
            icon: Icon(
              Icons.logout,
              color: Colors.black,
              size: 19,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.data.secName,
              child: Image.network(
                widget.data.secImg,
                height: 200,
                width: 399,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Section's List",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                hexStringToColor("CB2B93"),
                hexStringToColor("9546C4"),
                hexStringToColor("5E61F4"),
              ])),
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.data.sectionList.length,
                  itemBuilder: (context, index) {
                    var sectionlistdata = widget.data.sectionList;

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.network(
                                sectionlistdata[index].sectionImg,
                                height: 100,
                                width: 190,
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                hexStringToColor("CB2B93"),
                hexStringToColor("9546C4"),
                hexStringToColor("5E61F4"),
              ])),
              width: 430,
              height: 90,
              child: Center(
                heightFactor: 10,
                widthFactor: 19,
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Text(
                    "Hello welcome to Ver-mat., for more info please click the below listed sections",
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              // color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  hexStringToColor("CB2B93"),
                  hexStringToColor("9546C4"),
                  hexStringToColor("5E61F4"),
                ])),
                width: 430,
                height: 90,
                child: Center(
                  child: AnimatedTextKit(totalRepeatCount: 40, animatedTexts: [
                    WavyAnimatedText(
                        'Content will be update on a upcoming Updates',
                        textStyle: TextStyle(
                          color: Color(0xff000725),
                          fontSize: 15.0,
                        ))
                  ]),
                ),
              ),
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.data.examplesList.length,
                itemBuilder: (context, index) {
                  var examplesListdataone = widget.data.examplesList;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(examplesListdataone[index].sectionName,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        SizedBox(
                          height: 19,
                        ),
                        Text(examplesListdataone[index].sectionContains,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        SizedBox(
                          height: 19,
                        ),
                        Text(examplesListdataone[index].sectionDescription,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        SizedBox(
                          height: 9,
                        ),
                        Text(examplesListdataone[index].message,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        SizedBox(
                          height: 9,
                        ),
                        InkWell(
                          // text navi to particular sections
                          //onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 9,
                                ),
                                Container(
                                  width: 319,
                                  height: 1,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(examplesListdataone[index].Examples,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.orange)),
                                SizedBox(
                                  height: 9,
                                ),
                                Container(
                                  width: 319,
                                  height: 1,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(examplesListdataone[index].Example1,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.orange)),
                                SizedBox(
                                  height: 9,
                                ),
                                Container(
                                  width: 319,
                                  height: 1,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(examplesListdataone[index].Example2,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.orange)),
                                SizedBox(
                                  height: 9,
                                ),
                                Container(
                                  width: 319,
                                  height: 1,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(examplesListdataone[index].Example3,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.orange)),
                                SizedBox(
                                  height: 9,
                                ),
                                Container(
                                  width: 319,
                                  height: 1,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(examplesListdataone[index].Example4,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.orange)),
                                SizedBox(
                                  height: 9,
                                ),
                                Container(
                                  width: 319,
                                  height: 1,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(examplesListdataone[index].Example5,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.orange)),
                              ],
                            ),
                          ),

                          // text navi to particular sections
                        ),
                        //Text(examplesListdataone[index].Example5,
                        //style: TextStyle(
                        // fontSize: 20,
                        //fontWeight: FontWeight.w400,
                        // color: Colors.orange)),
                      ],
                    ),
                  );
                }),
            SizedBox(
              height: 3,
            ),

            SizedBox(
              height: 9,
            ),
            Container(
                height: 299,
                child: _controller.value.isInitialized
                    ? Column(
                        children: <Widget>[
                          Stack(
                            children: [
                              SizedBox(
                                height: 199,
                                child: VideoPlayer(_controller),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LandScapePlayerPages(
                                                      controller:
                                                          _controller)));
                                    },
                                    icon: const Icon(
                                      Icons.fullscreen,
                                      color: Colors.pink,
                                      size: 39,
                                    )),
                              )
                            ],
                          ),
                          const SizedBox(height: 1),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ValueListenableBuilder(
                                  valueListenable: _controller,
                                  builder:
                                      (context, VideoPlayerValue value, child) {
                                    return Text(
                                      _videoDuration(value.position),
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    );
                                  }),
                              Expanded(
                                child: SizedBox(
                                  height: 4,
                                  child: VideoProgressIndicator(
                                    _controller,
                                    allowScrubbing: true,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 14),
                                  ),
                                ),
                              ),
                              Text(
                                _videoDuration(_controller.value.duration),
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 13),
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () => _controller.value.isPlaying
                                  ? _controller.pause()
                                  : _controller.play(),
                              icon: Icon(
                                _controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: Colors.black,
                                size: 30,
                              ))
                        ],
                      )
                    : const Center(
                        child: CircularProgressIndicator(
                          color: Colors.amber,
                        ),
                      )),
            SizedBox(
              height: 9,
            ),

            // ListView.builder( Container(
            //  height: 400,
            //child: VideoPlayer(VideoPlayerController.network(
            // networkVideos1dataone[index].videoUrl)
            //  ),
            //    );
            //  physics: NeverScrollableScrollPhysics(),
            //  shrinkWrap: true,
            // itemCount: widget.data.networkVideos1.length,
            //itemBuilder: (context, index) {
            //  var networkVideos1dataone = widget.data.networkVideos1;
            //return Container(
            // width: 300,
            // height: 300,
            // child: VideoPlayer(VideoPlayerController.network(
            //    networkVideos1dataone[index].videoUrl)),
            // );
            // }),
            SizedBox(
              height: 3,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.data.sectionList.length,
                itemBuilder: (context, index) {
                  var sectionlistdataone = widget.data.sectionList;

                  //var context2 = context;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Section(
                                        data: data[index],
                                      )));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            hexStringToColor("423c36"),
                            hexStringToColor("9546C4"),
                            hexStringToColor("5E61F4"),
                          ])),
                          child: Row(
                            children: [
                              Image.network(
                                sectionlistdataone[index].sectionImg,
                                height: 100,
                                width: 110,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(sectionlistdataone[index].sectionsName,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                    InkWell(
                                      // text navi to particular sections
                                      onTap: () {},
                                      child: Text(
                                          sectionlistdataone[index].description,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Colors
                                                  .orange)), // text navi to particular sections
                                    ),
                                  ],
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
                "Special partner",
              ),
            ),

            Center(child: Text("COLLABERA TECHNOLOGIES PRIVATE LIMITED"))
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff000725),
        width: 314,
        child: ListView(
          children: [
            SizedBox(
              height: 3,
            ),
            CircleAvatar(
              radius: 46,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                "${FirebaseAuth.instance.currentUser!.photoURL}",
              ),
            ),
            AnimatedTextKit(
              totalRepeatCount: 49,
              animatedTexts: [
                WavyAnimatedText(
                  ' Email:${FirebaseAuth.instance.currentUser!.email}',
                  textStyle: TextStyle(color: Colors.amber, fontSize: 20),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(
              height: 9,
            ),
            AnimatedTextKit(
              totalRepeatCount: 10,
              animatedTexts: [
                WavyAnimatedText(
                    'Name: ${FirebaseAuth.instance.currentUser!.displayName}',
                    textStyle: TextStyle(color: Colors.amber, fontSize: 17),
                    textAlign: TextAlign.center),
              ],
            ),
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    hexStringToColor("000725  "),
                    hexStringToColor("9546C4"),
                    hexStringToColor("000725"),
                  ]),
                  color: Colors.red,
                  image:
                      DecorationImage(image: AssetImage("images/versant.png"))),
              child: Text(
                "Hello Welcome 2 Ver-Mat",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.amber,
                ),
                textColor: Colors.red,
                focusColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: 3,
              width: 5,
            ),
            Container(
              width: 4,
              height: 1,
              color: Colors.blue,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs()));
              },
              child: ListTile(
                title: Text(
                  'About us',
                  style: TextStyle(fontSize: 17, color: Colors.red),
                ),
                leading: Icon(
                  Icons.contact_mail,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 3,
              width: 5,
            ),
            Container(
              width: 4,
              height: 1,
              color: Colors.blue,
            ),
            ListTile(
              title: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19, color: Colors.blue),
              ),
              subtitle: Text(
                "Version-0.1",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ),
          ],
        ),

        //child: Icon(Icons.format_shapes),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
        child: Icon(Icons.home),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}
