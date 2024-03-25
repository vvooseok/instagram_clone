import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/src/pages/home.dart';

// Type을 명확하게 표현하는 것이 좋음
enum AvatarType { TYPE1, TYPE2, TYPE3 }

class AvatarWidget extends StatelessWidget {
  final bool? hasStory;
  final String? thumbPath;
  final String? nickname;
  final AvatarType type;
  final double? size;

  const AvatarWidget({
    super.key,
    this.hasStory,
    this.thumbPath,
    this.nickname,
    this.type,
    this.size,
  });

  Widget type1Widget() {
    return Container(
      // 간격 띄우기
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple,
            Colors.orange,
          ]
        ),
        shape: BoxShape.circle,
      ),
      child: CachedNetworkImage(
        width: 65,
        height: 65,
        imageUrl: thumbPath,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    switch(type) {
      case AvatarType.TYPE1:
        // 그라데이션 있는 부분 구현
        return type1Widget();
        break;
      case AvatarType.TYPE2:
      case AvatarType.TYPE3:
        return Container();
        break;
    }
    return const Placeholder();
  }
}
