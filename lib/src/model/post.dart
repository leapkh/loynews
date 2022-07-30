import 'dart:convert';

import 'package:loynews/src/model/rendered_content.dart';

class Post {

  final int id;
  final String date;
  final String slug;
  final RenderedContent title;
  final RenderedContent content;
  Post({
    required this.id,
    required this.date,
    required this.slug,
    required this.title,
    required this.content,
  });
  

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'id': id});
    result.addAll({'date': date});
    result.addAll({'slug': slug});
    result.addAll({'title': title.toMap()});
    result.addAll({'content': content.toMap()});
  
    return result;
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id']?.toInt() ?? 0,
      date: map['date'] ?? '',
      slug: map['slug'] ?? '',
      title: RenderedContent.fromMap(map['title']),
      content: RenderedContent.fromMap(map['content']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));
}
