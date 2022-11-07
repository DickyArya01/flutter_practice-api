import 'package:dicky/constant.dart';
import 'package:dicky/page/detail.dart';
import 'package:dicky/page/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: home,
        routes: {
          home: (context) => HomePage(),
          detail: (context) => DetailPage(),
        });
  }
}
