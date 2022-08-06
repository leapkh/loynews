import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:loynews/src/api/api_provider.dart';
import 'package:loynews/src/constant/firestore_constants.dart';
import 'package:loynews/src/model/firestore_post.dart';
import 'package:loynews/src/model/post.dart';
import 'package:loynews/src/model/remote_data.dart';

class PostsViewModel extends GetxController {

  // Observerable
  var _data = RemoteData<List<FirestorePost>>(status: RemoteDataStatus.processing, data: null).obs;

  // Getter
  RemoteData<List<FirestorePost>> get data => _data.value;

  // Callback
  @override
  void onInit() {
    _loadData();

    super.onInit();
  }

  // Utility
  /*void _loadData() async {
    try {
      final data = await ApiProvider.loadPostsFromFirestore();
      _data.value = RemoteData<List<FirestorePost>>(status: RemoteDataStatus.loaded, data: data);
    } catch (ex) {
      _data.value = RemoteData<List<FirestorePost>>(status: RemoteDataStatus.error, data: null);
    }
  }*/

  void _loadData() {
    try {
      final data = FirebaseFirestore.instance.collection('posts').snapshots();
      data.listen((result) {
        final posts = result.docs.map((e) => FirestorePost.fromMap(e.data())).toList();
        _data.value = RemoteData<List<FirestorePost>>(status: RemoteDataStatus.success, data: posts);
       });
    } catch (ex) {
      _data.value = RemoteData<List<FirestorePost>>(status: RemoteDataStatus.error, data: null);
    }
  }

  void removePost(FirestorePost post){
    FirebaseFirestore.instance.collection(FirestoreConstants.postsCollection).doc(post.id.toString()).delete();
  }

}