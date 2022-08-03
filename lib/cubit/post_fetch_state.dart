part of 'post_fetch_cubit.dart';

abstract class PostFetchState extends Equatable {
  const PostFetchState();
  @override
  List<Object> get props => [];

}

class PostFetchStateInitial extends PostFetchState{}

class PostFetchStateLoading extends PostFetchState{}

class PostFetchStateData extends PostFetchState{}

class PostFetchStateError extends PostFetchState{}
