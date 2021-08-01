import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final String imgUrl;
  final double size;
  const UserProfileImage({required this.imgUrl, this.size = 48.0, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 17),
      child: Image.network(
        imgUrl,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
