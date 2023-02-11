import 'package:flutter/material.dart';

import '../../models/models.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage(
    Key? key,
    this.post,
  ) : super(key: key);

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Post #${post.id}'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text(
              post.title,
              style: textTheme.headline6,
            ),
            SizedBox(height: 20),
            Text(
              post.body,
              style: textTheme.bodyText1,
              textAlign: TextAlign.justify,
            ),

          ],
        ),
      ),
    );
  }
}
