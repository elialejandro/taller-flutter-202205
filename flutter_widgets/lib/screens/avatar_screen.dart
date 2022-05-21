import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AvatarScreen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.blue[900],
              child: const Text('JR'),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://media3.giphy.com/media/LXHJRRjnviw7e/giphy.gif?cid=790b761174ab66729d929f6ba41ba81c0bd4a563ddbbc827&rid=giphy.gif&ct=g'),
      )),
    );
  }
}
