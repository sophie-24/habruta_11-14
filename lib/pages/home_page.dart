import 'package:flutter/material.dart';
import '../models/post.dart'; // Post 클래스를 가져옵니다.
import 'detail_page.dart'; // DetailPage를 가져옵니다.

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 예시 Post 객체
    Post examplePost = Post(title: "Post Title", content: "Post Content");

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // 버튼 클릭 시 Navigator.pushNamed 사용
            Navigator.pushNamed(
              context,
              '/detail', // 'DetailPage'로 이동
              arguments: examplePost, // 전달할 데이터 (Post 객체)
            );
          },
          child: Text('Go to Detail Page'),
        ),
      ),
    );
  }
}
