import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Circle User Image
class UserImage extends StatefulWidget {
  const UserImage({Key? key}) : super(key: key);
  _UserImageState createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 48,
      backgroundImage: NetworkImage(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    );
  }
}

//Desc User in List
class UserDescList extends StatefulWidget {
  const UserDescList({Key? key}) : super(key: key);
  _UserDescListState createState() => _UserDescListState();
}

class _UserDescListState extends State<UserDescList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("User"),
      ),
    );
  }
}
