import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../components/components.dart';
import '../../repositories/repositories.dart';

class PostPage extends StatelessWidget {
  PostPage({Key? key}) : super(key: key);

  final _postRepositoty = PostRepository();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: FutureBuilder<List<PostModel>>(
            future: _postRepositoty.load(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (snapshot.hasError) {
                return Center(
                  child: Text('Ops... parece que algo deu errado!'),
                );
              }

              if (snapshot.hasData == false) {
                return Center(
                  child: Text('Nenhum post encontrado'),
                );
              }

              final results = snapshot.data!;

              return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: results.length,
                itemBuilder: (context, index) {
                  final post = results[index];
                  return PostCard(post: post);
                },
              );
            }));
  }
}
