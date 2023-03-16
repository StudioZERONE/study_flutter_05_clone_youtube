import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/components/youtube_bottom_sheet.dart';

enum RouteName {
  Home,
  Explore,
  Add,
  Subscribe,
  Library,
}

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    if (RouteName.values[index] == RouteName.Add) {
      _showBottomSheet();
    } else {
      currentIndex(index);
    }
  }

  void _showBottomSheet() {
    //const Text("test");
    Get.bottomSheet(const YoutubeBottomSheet());
  }
}
