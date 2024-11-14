// 새로운 게시물을 작성하는 화면으로, 입력된 제목과 내용을 저장

import 'package:flutter/material.dart';

class CreatePostPage extends StatefulWidget {
  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  void _submitPost() {
    final title = _titleController.text;
    final content = _contentController.text;

    if (title.isNotEmpty && content.isNotEmpty) {
      // 서버에 게시물 저장 로직 구현 필요
      Navigator.pop(context); // 게시물 작성 후 이전 화면으로 이동
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create Post")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(labelText: 'Content'),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitPost,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
