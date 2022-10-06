import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:orange_digita_center/view/pages/add_notes.dart';
import 'package:orange_digita_center/view/pages/events_screen.dart';
import 'package:orange_digita_center/view/pages/finals_screen.dart';
import 'package:orange_digita_center/view/pages/lectures_screen.dart';
import 'package:orange_digita_center/view/pages/login_screen.dart';
import 'package:orange_digita_center/view/pages/midterms_screen.dart';
import 'package:orange_digita_center/view/pages/news_screen.dart';
import 'package:orange_digita_center/view/pages/notes_screen.dart';
import 'package:orange_digita_center/view/pages/section_screen.dart';
import 'package:orange_digita_center/view/pages/settings_screen.dart';
import 'package:orange_digita_center/view/pages/signup_screen.dart';
import 'package:orange_digita_center/view/pages/splash_screen.dart';
import 'package:orange_digita_center/view/pages/support_screen.dart';
import 'package:orange_digita_center/view_model/database/network/dio_helper.dart';
import 'package:orange_digita_center/view_model/database/network/end_points.dart';

import 'view/pages/home_screen.dart';


void main() async{
  /*

  await DioHelper.init();
  var json =
  {
    "email":"tohamymedo41@gmailcom",
    "password" : "123456m"
  };

  DioHelper.postData(
      url: universityEndPoint,
      data:json
  ).then((value) {

    print(value.data);
  });


  //DioHelper.getData(url: universityEndPoint).then((value) => print(value.data));



   */

  await DioHelper.init();

  runApp(MaterialApp(home: LoginScreen())
  );

}


/*

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        leading: Icon(
        Icons.arrow_back,),
    title: Text("Home"),
    actions: [
    Icon(Icons.arrow_back,
    ),
    ],
    ),
        ),


    );

  }
}

 */




















