import 'package:flutter/material.dart';
import '../models/post.dart'; // Post 클래스를 가져옵니다.

class DetailPage extends StatelessWidget {
  final Post? post; // nullable한 Post 객체

  const DetailPage({Key? key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Detail'),
      ),
      body: post == null
          ? Center(child: Text('No post available.'))
          : Column(
        children: [
          Text(
            post!.title, // post가 null이 아니면 데이터 사용
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(post!.content),
        ],
      ),
    );
  }
}
