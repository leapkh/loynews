import 'package:get/get.dart';
import 'package:loynews/src/api/api_provider.dart';
import 'package:loynews/src/model/post.dart';
import 'package:loynews/src/model/remote_data.dart';

class PostsViewModel extends GetxController {

  // Observerable
  var _data = RemoteData<List<Post>>(status: RemoteDataStatus.loading, data: null).obs;

  // Getter
  RemoteData<List<Post>> get data => _data.value;

  // Callback
  @override
  void onInit() {
    _loadData();

    super.onInit();
  }

  // Utility
  void _loadData() async {
    try {
      final data = await ApiProvider.loadPosts();
      _data.value = RemoteData<List<Post>>(status: RemoteDataStatus.loaded, data: data);
    } catch (ex) {
      _data.value = RemoteData<List<Post>>(status: RemoteDataStatus.error, data: null);
    }
  }

}