
import 'package:assignment_2/userdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(MaterialApp(
    home: secondpage(),
  ));
}

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SIGN UP ",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        // backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(child: MyHome()),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  TextEditingController textEditingController4 = TextEditingController();
  TextEditingController textEditingController5 = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: textEditingController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter the value";
                }
                return null;
              },
              decoration: InputDecoration(hintText: ("Firstname")),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: textEditingController1,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter the value";
                }
                return null;
              },
              decoration: InputDecoration(hintText: ("Lastname")),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: textEditingController2,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the Gender";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: ("Gender"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: textEditingController3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Requierd";
                }
                return null;
              },
              decoration: InputDecoration(hintText: ("Email")),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: textEditingController4,
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the password";
                }
                return null;
              },
              decoration: InputDecoration(hintText: ("New Password")),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: textEditingController5,
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter the password";
                }
                return null;
              },
              decoration: InputDecoration(hintText: ("Re-Enter the password")),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String firstname = textEditingController.text;
                String lastname = textEditingController1.text;
                String email = textEditingController2.text;
                String gender = textEditingController3.text;
                String newpassword = textEditingController4.text;
                String re_password = textEditingController5.text;

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => thirdpage(
                          fname: firstname,
                          lname: lastname,
                          email: email,
                          gen: gender,
                          npassword: newpassword,
                          rpassword: re_password,
                        )));

                if (formkey.currentState!.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("submitting...")));
                }
              },
              child: Text("submit")),
          TextButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            child: Text(
              "<-Go Back",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
