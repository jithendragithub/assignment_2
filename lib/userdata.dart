import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class thirdpage extends StatelessWidget {

  late final fname;
  final lname;
  final email;
  final gen;
  final npassword;
  final rpassword;

  thirdpage(
      {this.fname, this.lname, this.email, this.gen, this.npassword, this.rpassword,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("USER DATA"), centerTitle: true,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(fname),
              Text(lname),
              Text(email),
              Text(gen),
              Text(npassword),
              Text(rpassword),
            ],

          ),
        )


    );
  }

}