class PostModel {
  const PostModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  final int id;
  final int userId;
  final String title;
  final String body;

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as int,
      userId: map['userId'] as int,
      title: (map['title'] as String).replaceAll('\n', ' '),
      body: (map['body'] as String).replaceAll('\n', ' '),
    );
  }
}
