import 'package:flutter/material.dart';
import 'package:fluttercrud/Screen/Register.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _formField(),
                  _buttonType(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //Widget iconLogin
  Widget _iconLogin() {
    return Image.asset(
      "assets/images/icon-plane.jpg",
      width: 150.0,
      height: 150.0,
    );
  }

  //Widget title Descripti
  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          "Login Into ISKY",
          style: TextStyle(color: Colors.white, fontSize: 15.0),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
      ],
    );
  }
  //Widget formField
   Widget _formField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue, 
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlue,
                width: 3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle(color: Colors.lightBlue),
          ),
          style: TextStyle(color: Colors.black),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue, 
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.lightBlue,
                width: 3.0,
              ),
            ),
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.blue),
          ),
          style: TextStyle(color: Colors.black),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }
  //Widget buttonType
  Widget _buttonType(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            width: double.infinity,
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onTap: (){

          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          'or',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.0,
          ),
        ),
        FlatButton(
          child: Text(
            'Register',
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            Navigator.pushNamed(context, Register.routeName);
          },
        ),
      ],
    );
  }

}
