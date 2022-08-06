import 'package:loynews/src/model/firestore_post.dart';
import 'package:loynews/src/model/post.dart';
import 'package:http/http.dart' as api;
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';

class ApiProvider {
  static Future<List<String>> loadMenus() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
      'ទំព័រដើម',
    ];
  }

  static Future<List<Post>> loadPosts() async {

    final uri = Uri.parse('https://loynews.co/wp-json/wp/v2/posts');
    final response = await api.get(uri);
    if(response.statusCode != 200){
      throw Exception('Error response from server.');
    }

    final jsonArray = jsonDecode(response.body) as List<dynamic>;
    return jsonArray.map((e){
      return Post.fromMap(e);
    }).toList();

  }

  static Future<List<FirestorePost>> loadPostsFromFirestore() async {
    final result = await FirebaseFirestore.instance.collection('posts').get();
    return result.docs.map((e){
      return FirestorePost.fromMap(e.data());
    }).toList();
  }

}
