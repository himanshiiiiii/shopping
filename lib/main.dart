

import 'package:flutter/material.dart';
import 'package:shopping/home.dart';
import 'package:shopping/first.dart';
import 'package:shopping/login.dart';
import 'package:shopping/splash.dart';
import 'package:shopping/splash.dart';
import 'package:shopping/search.dart';
import 'package:shopping/sunscribe.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:{
      "/" :(context)=>Home(),
      "login":(context)=>Login(),
      "first":(context)=>First(),
      "splash":(context)=>Splash(),
      "search":(context) =>Search(),
      "subscribe":(context)=>Subscribe(),
    }
  ));
}

