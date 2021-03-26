import 'package:flutter/material.dart';
import 'package:yallatask/LoginCard.dart';
import 'package:yallatask/Logo.dart';
import 'package:yallatask/SignIn.dart';
import 'package:yallatask/SocialContacts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Image facebook = Image.asset('assets/images/facebook.png');
  Image google = Image.asset('assets/images/google.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Logo(),
              SizedBox(
                height: 30,
              ),
              LoginCard(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have Account ?",
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                 SignIn(),
                ],
              ),
              SocialContacts(facebook),
              SizedBox(
                height: 10,
              ),
              SocialContacts(google),
            ],
          ),
        ),
      ),
    );
  }
}
