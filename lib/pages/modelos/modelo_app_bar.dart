// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

AppBar getAppBar(BuildContext context) {
  return AppBar(
    title: Image(
        image: AssetImage("assets/images/dente_logo.png"),
        height: 120,
        //width: MediaQuery.of(context).size.width/1.5,
    ),
    /*title: Text(
      'Glossário de Oclusão',
      style: TextStyle(
        color: Colors.white,
      ),
    ),*/
    centerTitle: true,
    backgroundColor: Colors.blue,
  );
}
