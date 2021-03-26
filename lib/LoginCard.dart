import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {},
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
