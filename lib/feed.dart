import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  // 좋아요 여부
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      // 시작 부분(왼쪽)으로 정렬
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          widget.imageUrl,
          // 이미지 높이
          height: 400,
          // 위젯의 너비를 가능한 최대로 설정
          width: double.infinity,
          // 전체 프레임을 채우기 위해 사진을 확대 또는 축소
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(CupertinoIcons.heart),
              color: isFavorite ? Colors.red : Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.chat_bubble),
              color: Colors.black,
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.bookmark),
              color: Colors.black,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '3 likes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '네온과 고양이, 최고의 조합 \n#CateLife #NeonVibes',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'March 6',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
