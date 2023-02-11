import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/models.dart';

class PostRepository {
  Future<List<PostModel>> load() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception();
    }

    final data = jsonDecode(response.body) as List;
    final results = data.map((e) => PostModel.fromMap(e)).toList();

    return results;
  }
}
