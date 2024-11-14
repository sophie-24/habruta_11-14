import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // 게시물 목록 페이지
import 'pages/detail_page.dart'; // 게시물 상세 페이지
import 'pages/login_page.dart'; // 로그인 페이지
import 'pages/create_post_page.dart'; // 게시물 작성 페이지
import 'models/post.dart'; // Post 클래스를 가져옵니다.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Havruta App', // 앱 이름 설정
      theme: ThemeData(
        primarySwatch: Colors.blue, // 기본 색상 테마 설정
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // 초기 경로 설정
      routes: {
        '/': (context) => LoginPage(), // 초기 화면으로 로그인 페이지 설정
        '/home': (context) => HomePage(), // 게시물 목록 페이지
        '/createPost': (context) => CreatePostPage(), // 게시물 작성 페이지
      },
      // onGenerateRoute로 arguments 처리
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final Post post = settings.arguments as Post; // arguments로 전달된 Post 객체를 받음
          return MaterialPageRoute(
            builder: (context) => DetailPage(post: post), // DetailPage로 Post 객체 전달
          );
        }
        return null; // 일치하지 않으면 null 반환
      },
    );
  }
}
