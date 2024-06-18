// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

AppBar getAppBar(BuildContext context) {
  return AppBar(
    title: Image(
        image: AssetImage("assets/images/dente_logo.png"),
        height: 120,
    ),
    centerTitle: true,
    backgroundColor: Colors.blue,
  );
}
