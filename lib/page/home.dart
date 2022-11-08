import 'dart:convert';

import 'package:dicky/api/model.dart';
import 'package:dicky/api/repository.dart';
import 'package:dicky/component.dart';
import 'package:dicky/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dicky/api/model.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Repository repo = Repository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar GET HTTP'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: repo.fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              NetworkImage(snapshot.data[index].avatar),
                        ),
                        title: Text(snapshot.data[index].firstName +
                            " " +
                            snapshot.data[index].lastName),
                        subtitle: Text(snapshot.data[index].email),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, detail);
                      },
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
