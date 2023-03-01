import 'dart:convert';
import 'package:api_call_second/modal/post_model.dart';
import 'package:http/http.dart' as http;

class PostService {
  static const String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  static Future<List<Post>> getPosts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
