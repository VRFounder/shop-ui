import 'package:flutter/material.dart';

import 'like_button.dart';

class Post extends StatefulWidget {
  final String imgSource;
  const Post({Key? key, required this.imgSource}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      alignment: Alignment.topRight,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(widget.imgSource),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: LikeButton(isLiked: isLiked, onTap: toggleLike,)
      ),
    );
  }
}
