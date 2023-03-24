import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/repository/youtube_repository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  @override
  void onInit() {
    _videoLoad();
    super.onInit();
  }

  void _videoLoad() {
    YoutubeRepository.to.loadVideos();
  }
}
