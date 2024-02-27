import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ver_mat/model/aboutus.dart';
import 'package:ver_mat/model/data.dart';
import 'package:ver_mat/ui/Home_Screen.dart';
import 'package:ver_mat/ui/home.dart';
import 'package:ver_mat/utils/colors_utils.dart';

import '../../model/data.dart';

class AboutUs extends StatefulWidget {
  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About us"),
      ),
      body: Center(
        child: Text(
            "Coming Soon Mr/Ms${FirebaseAuth.instance.currentUser?.displayName}"),
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
                  textStyle: TextStyle(color: Colors.amber, fontSize: 21),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(
              height: 9,
            ),
            AnimatedTextKit(
              totalRepeatCount: 49,
              animatedTexts: [
                WavyAnimatedText(
                    'Name: ${FirebaseAuth.instance.currentUser!.displayName}',
                    textStyle: TextStyle(color: Colors.amber, fontSize: 19),
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
