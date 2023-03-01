import 'package:api_call_second/modal/post_model.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  final Post post;

  PostDetailPage({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User ID: ${post.userId}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              post.body,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
