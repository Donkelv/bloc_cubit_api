import 'dart:html';

import 'package:bloc_fetch_api/models/failure_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/post_model.dart';

part 'post_fetch_state.dart';

class PostFetchCubit extends Cubit<PostFetchState> {
  PostFetchCubit() : super(PostFetchInitial());
}

