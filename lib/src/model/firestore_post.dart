import 'dart:convert';

class FirestorePost {

  final int id;
  final String title;
  final String content;
  FirestorePost({
    required this.id,
    required this.title,
    required this.content,
  });


  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'title': title});
    result.addAll({'content': content});
  
    return result;
  }

  factory FirestorePost.fromMap(Map<String, dynamic> map) {
    return FirestorePost(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      content: map['content'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FirestorePost.fromJson(String source) => FirestorePost.fromMap(json.decode(source));
}
