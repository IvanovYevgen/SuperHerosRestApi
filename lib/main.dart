import 'package:flutter/material.dart';
import 'package:flutter_chmelnitzk_2_16_11/pages/index.dart';
import 'themes/colors.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: primary
    ),
    home: IndexPage(),
  )
);