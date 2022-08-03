

import 'package:bloc_fetch_api/models/failure_model.dart';
import 'package:bloc_fetch_api/repository/api_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/post_model.dart';

part 'post_fetch_state.dart';

class PostFetchCubit extends Cubit<PostFetchState> {
  final ApiRepository apiRepository;
  PostFetchCubit({required this.apiRepository}) : super(PostFetchStateInitial());


  Future<void> fetchPostApi() async{
    emit(PostFetchStateLoading());

    try{
      final List<Post>? postList = await apiRepository.getPosts();
      emit(PostFetchStateData(postList: postList ?? []));
    } on Failure catch(err){
      emit(PostFetchStateError(failure: err));
    }

    catch (err){
      if (kDebugMode) {
        print(err);
      }
    }


  }

}

