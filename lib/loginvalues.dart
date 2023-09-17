import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fourthpage extends StatelessWidget {
  final uname;
  final password;

  fourthpage({
    this.uname,
    this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("USER DATA"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(uname),
              Text(password),
            ],
          ),
        ));
  }
}
