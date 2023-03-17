import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/components/youtube_bottom_sheet.dart';

// 하단 메뉴의 index와 이 enum의 index가 같아서, index는 생략 가능
enum RouteName {
  home,
  explore,
  add,
  subscribe,
  library,
}

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    if (RouteName.values[index] == RouteName.add) {
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
