class RemoteData<T> {

  final RemoteDataStatus status;
  T? data;

  RemoteData({
    required this.status,
    required this.data,
  });

}

enum RemoteDataStatus {
  loading, loaded, error
}