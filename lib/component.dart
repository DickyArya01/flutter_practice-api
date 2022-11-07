import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Circle User Image

//Desc User in List
class UserDescList extends StatefulWidget {
  const UserDescList({Key? key}) : super(key: key);
  _UserDescListState createState() => _UserDescListState();
}

class _UserDescListState extends State<UserDescList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("User"),
                Text("desc"),
              ],
            ),
            Text("another desc")
          ],
        ),
      ),
    );
  }
}
