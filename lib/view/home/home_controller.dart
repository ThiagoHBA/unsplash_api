import 'package:get/get.dart';
import 'package:unsplash_api/api/model/url_model.dart';
import 'package:unsplash_api/api/repositories/images_repository.dart';

class HomeController extends GetxController {
  var _actualImage;
  ImagesRepository _imagesRepository = ImagesRepository();
  UrlModel get actualImage => _actualImage;

  var _isLoading = false.obs;
  var _error = false.obs;
  get isLoading => _isLoading.value;
  get error => _error.value;

  @override
  void onInit() async {
    super.onInit();
    _isLoading.value = true;
    _actualImage = await getRandomImages();
    _isLoading.value = false;
  }

  Future<UrlModel> getRandomImages() async {
    late final UrlModel _image;
    try {
      _image = await _imagesRepository.getRandomImage();
      _error.value = false;
    } catch (e) {
      _error.value = true;
      Get.snackbar(
        'Erro ao capturar imagem',
        e.toString(),
      );
    }
    return _image;
  }
}
