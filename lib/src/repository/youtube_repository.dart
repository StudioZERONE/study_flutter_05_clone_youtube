import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/model/youtube_video_result.dart';

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    super.onInit();
  }

  Future<YoutubeVideoResult> loadVideos() async {
    String url =
        "/youtube/v3/search?key=AIzaSyBtMnChL7dmuV-4sT0FaIKKIpwrQuDx0oY&part=snippet&maxResults=10&order=date&type=video&videoDefinition=high";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        return YoutubeVideoResult.fromJson(response.body);
      } else {
        return response.body; // 이건 그냥 잠깐 내가 넣은거...
      }
      //print(response.body["items"]);
    }
  }
}
