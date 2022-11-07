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
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: CircleAvatar(
        minRadius: 32,
        maxRadius: 34,
        backgroundImage: NetworkImage(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
        ),
      ),
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
