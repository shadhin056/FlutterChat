import 'package:chat/components/RoundButton.dart';
import 'package:chat/page/login.dart';
import 'package:chat/page/registration.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = "welcome";

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 5), vsync: this);
    controller.forward();
    controller.addListener(() {
      setState(() {});
     //print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.withOpacity(controller.value),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                Text(
                  ' Chatting ',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundButton(title: "LogIn",color: Colors.white,onPressed:() {
              Navigator.pushNamed(context, LoginScreen.id);
            },),
            RoundButton(title: "Registration",color: Colors.blue,onPressed:() {
              Navigator.pushNamed(context, RegistrationScreen.id);
            },),
          ],
        ),
      ),
    );
  }
}

