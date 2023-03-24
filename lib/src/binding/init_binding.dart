import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/controller/app_controller.dart';
import 'package:study_flutter_05_clone_youtube/src/repository/youtube_repository.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
    Get.put(YoutubeRepository(), permanent: true);
  }
}
