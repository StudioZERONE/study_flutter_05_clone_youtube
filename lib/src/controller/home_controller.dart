import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/model/youtube_video_result.dart';
import 'package:study_flutter_05_clone_youtube/src/repository/youtube_repository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  Rx<YoutubeVideoResult> youtubeResult = YoutubeVideoResult().obs;

  @override
  void onInit() {
    _videoLoad();
    super.onInit();
  }

  void _videoLoad() async {
    YoutubeVideoResult youtubeVideoResult =
        await YoutubeRepository.to.loadVideos();
    //print(youtubeVideoResult.items.length);
    if (youtubeVideoResult.items.isNotEmpty) {
      youtubeResult(youtubeVideoResult);
    }
  }
}
