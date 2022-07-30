import 'dart:convert';

class RenderedContent {
  final String rendered;
  RenderedContent({
    required this.rendered,
  });
  

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'rendered': rendered});
  
    return result;
  }

  factory RenderedContent.fromMap(Map<String, dynamic> map) {
    return RenderedContent(
      rendered: map['rendered'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RenderedContent.fromJson(String source) => RenderedContent.fromMap(json.decode(source));
}
