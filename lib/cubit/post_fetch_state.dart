part of 'post_fetch_cubit.dart';

abstract class PostFetchState extends Equatable {
  const PostFetchState();
  @override
  List<Object> get props => [];
}

class PostFetchStateInitial extends PostFetchState {}

class PostFetchStateLoading extends PostFetchState {}

class PostFetchStateData extends PostFetchState {
  final List<Post> postList;

  const PostFetchStateData({required this.postList});

  @override
  // TODO: implement props
  List<Object> get props => [postList];
}

class PostFetchStateError extends PostFetchState {
  final Failure failure;

  const PostFetchStateError({required this.failure});

  @override
  // TODO: implement props
  List<Object> get props => [failure];
}
