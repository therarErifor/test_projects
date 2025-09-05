class Result<T> {
  final T? data;
  final Object? error;

  Result(this.data, this.error);

  factory Result.error(Object error) => Result(null, error);

  factory Result.success(T data) => Result(data, null);

  bool get isSuccess => error == null;

  R fold<R>(R Function(T) onSuccess, R Function(Object) onError) {
    return isSuccess ? onSuccess(data as T) : onError(error!);
  }

  Result<R> map<R>(R Function(T) mapper) {
    return isSuccess ? Result.success(mapper(data as T)) : Result.error(error!);
  }
}