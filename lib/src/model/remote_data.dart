class RemoteData<T> {

  final RemoteDataStatus status;
  final String? message;
  T? data;

  RemoteData({
    required this.status,
    this.message,
    this.data,
  });

}

enum RemoteDataStatus {
  none, processing, success, error
}