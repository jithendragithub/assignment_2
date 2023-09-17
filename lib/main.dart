
import 'package:assignment_2/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginvalues.dart';
void main() {
  runApp(MaterialApp(home: MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN IN'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: (MyCustomForm()),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final text = "Create an account";
  TextEditingController textEditingController6 = TextEditingController();
  TextEditingController textEditingController7 = TextEditingController();
  @override
  final formkey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          //Padding(padding: EdgeInsets.only(top:100), child:Text("Sign in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextFormField(
              controller: textEditingController6,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter the value";
                }
                return null;
              },
              decoration: InputDecoration(hintText: ("Username")),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextFormField(
              controller: textEditingController7,
              obscureText: true,
              decoration: InputDecoration(hintText: ("Password")),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              String username = textEditingController6.text;
              String password = textEditingController7.text;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => fourthpage(
                        uname: username,
                        password: password,
                      )));
            },
            child: Text("Login"),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("create an account?"),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => secondpage()));
                    },
                    child: Text('Sign up')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
