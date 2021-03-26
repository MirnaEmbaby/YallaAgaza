import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/yallalogo.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 30),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle_rounded),
                            hintText: "Email"),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility),
                            hintText: "Password"),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: FlatButton(
                            onPressed: () {}, child: Text("Forget Password ?")),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),
                          ),
                          onPressed: () {},
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                )),
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
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset('assets/images/facebook.png'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              height: 45,
              child: RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset('assets/images/google.png'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.blue,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
