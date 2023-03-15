import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/controller/app_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
