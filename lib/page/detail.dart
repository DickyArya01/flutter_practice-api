import 'package:flutter/material.dart';

//
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Detail")),
    );
  }
}
