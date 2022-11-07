import 'package:dicky/api/model.dart';
import 'package:dicky/api/repository.dart';
import 'package:dicky/component.dart';
import 'package:dicky/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> listUser = [];
  Repository repository = Repository();

  getdata() async {
    listUser = await repository.getData();
  }

  @override
  void initState() {
    // TODO: implement initState
    getdata();
    print(listUser);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: listUser.length,
        itemBuilder: (context, index) => Container(
            child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [],
          ),
        )),
      ),
    );
  }
}
