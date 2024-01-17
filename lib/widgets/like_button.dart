import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {

  final bool isLiked;

  final dynamic onTap;

  const LikeButton({Key? key, required this.isLiked, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isLiked ? Icons.favorite : Icons.favorite_border,
        size: 35,
        color: isLiked ? Colors.red : Colors.grey.shade300,),
    );
  }
}
