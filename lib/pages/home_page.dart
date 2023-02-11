import 'package:flutter/material.dart';

import '../pages/pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: Icon(Icons.list),
          title: Text('Posts'),
        ),
        body: PostPage());
  }
}
