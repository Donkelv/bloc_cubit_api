import 'package:bloc_fetch_api/service/api_service.dart';

import '../models/post_model.dart';

class ApiRepository {



  const ApiRepository({
    required this.apiService,
});

  final ApiService apiService;



  Future<List<Post>?> getPosts() async {
    final response = await apiService.getPostData();
    if(response != null) {
      final data = response.data as List<dynamic>;
      return data.map((post) => Post.fromMap(post)).toList();
    }
  }
}