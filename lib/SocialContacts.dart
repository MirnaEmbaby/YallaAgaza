import 'package:flutter/material.dart';

class SocialContacts extends StatelessWidget {
  final Image image;

  SocialContacts(this.image);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 45,
      child: RaisedButton(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: image,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.blue,
        onPressed: () {},
      ),
    );
  }
}
