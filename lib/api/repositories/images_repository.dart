import 'package:dio/dio.dart';
import 'package:unsplash_api/api/interfaces/i_images_repository.dart';
import 'package:unsplash_api/api/model/url_model.dart';
import 'package:unsplash_api/api/services/rest_client.dart';

class ImagesRepository extends IImageRepository {
  final Dio _dio = Dio(restClient.options);

  @override
  Future<UrlModel> getRandomImage() async {
    try {
      final _path = '/photos/random';
      final _response = await _dio.get(_path);
      return UrlModel.fromMap(_response.data['urls']);
    } on DioError catch (e) {
      throw Exception(e);
    }
  }
}
