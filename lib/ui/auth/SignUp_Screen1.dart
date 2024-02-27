import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ver_mat/ui/Home_Screen.dart';
import 'package:ver_mat/ui/auth/Google_SignIn.dart';
import 'package:ver_mat/ui/auth/login_screen.dart';
import 'package:ver_mat/ui/home.dart';
import 'package:ver_mat/utils/utils.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({super.key});

  @override
  State<SignUp1> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  bool loading = false;
  String email = "", password = "";
  var _formKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> register() async {
    setState(() {
      loading = true;
    });
    User user = (await auth
        .createUserWithEmailAndPassword(email: email.trim(), password: password)
        .then((value) {
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace) {
      Utiles().toastMessage(error.toString());
      setState(() {
        loading = false;
      });
    })) as User;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000725),
      body: Form(
        key: _formKey,
        child: ListView(children: <Widget>[
          Container(
            width: double.infinity,
            height: 180,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Sign In Up",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Welcome to V-Mat",
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    )
                  ]),
            ),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(190)),
                color: Color.fromARGB(255, 255, 234, 47)),
          ),
          Theme(
            data: ThemeData(hintColor: Colors.blue),
            child: Padding(
              padding: EdgeInsets.only(top: 50, right: 20, left: 20),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Name!";
                  }
                  return null;
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  label: Text("User Name"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xff000725), width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                ),
              ),
            ),
          ),
          Theme(
            data: ThemeData(hintColor: Colors.blue),
            child: Padding(
              padding: EdgeInsets.only(top: 10, right: 20, left: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your email Id!";
                  } else {
                    email = value;
                  }
                  return null;
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  label: Text("Email"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                ),
              ),
            ),
          ),
          Theme(
            data: ThemeData(hintColor: Colors.blue),
            child: Padding(
              padding: EdgeInsets.only(top: 10, right: 20, left: 20),
              child: TextFormField(
                obscureText: true,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter the Password!";
                  } else if (value.length < 8) {
                    return "Password requires min 8 lenght";
                  } else {
                    password = value;
                  }
                  return null;
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          BorderSide(color: Color(0xffff2fc3), width: 1)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  register();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }
              },
              child: Text(
                "SignUp",
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.blue,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              },
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign Up with Google",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign Up with Facebook",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  "You already have an account ?",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Column(
                      children: <Widget>[
                        Text(
                          "LogIn",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          width: 45,
                          height: 1,
                          color: Colors.blue,
                        ),
                      ],
                    )),
                Container(
                  width: 45,
                  height: 1,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
