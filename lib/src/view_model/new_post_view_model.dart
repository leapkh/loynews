import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:loynews/src/api/api_provider.dart';
import 'package:loynews/src/constant/firestore_constants.dart';
import 'package:loynews/src/model/firestore_post.dart';
import 'package:loynews/src/model/post.dart';
import 'package:loynews/src/model/remote_data.dart';

class NewPostViewModel extends GetxController {

  // Observerable
  final _data = RemoteData(status: RemoteDataStatus.none, message: null, data: null).obs;

  // Getter
  RemoteData get data => _data.value;

  void addPost(String title, String content) async {
    // Validate
    if(title.isEmpty || content.isEmpty){
      _data.value = RemoteData(status: RemoteDataStatus.error, message: 'Please enter title and content', data: null);
      return;
    }

    _data.value = RemoteData(status: RemoteDataStatus.processing, message: null, data: null);
    int timeStamp = DateTime.now().millisecondsSinceEpoch;
    final newPost = FirestorePost(id: timeStamp, title: title, content: content);
    await FirebaseFirestore.instance.collection(FirestoreConstants.postsCollection).doc(timeStamp.toString()).set(newPost.toMap());
    await Future.delayed(Duration(seconds: 1));
    _data.value = RemoteData(status: RemoteDataStatus.success, message: null, data: null);
  }

}