//import 'dart:async';
//import 'dart:convert';
//import 'dart:js';

import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:fluttercrud/Screen/Register.dart';
import 'package:fluttercrud/Screen/Login.dart';



void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ISKY",
    initialRoute: "/",
    routes: {
      "/": (context) => Login(),
      Register.routeName : (context) => Register(),
    },
  ));
}