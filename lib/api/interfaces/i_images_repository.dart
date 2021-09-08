import 'package:unsplash_api/api/model/url_model.dart';

abstract class IImageRepository {
  Future<UrlModel> getRandomImage();
}
