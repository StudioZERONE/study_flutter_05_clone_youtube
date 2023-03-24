import 'package:get/get.dart';

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    super.onInit();
  }

  loadVideos() async {
    String url =
        "/youtube/v3/search?key=AIzaSyBtMnChL7dmuV-4sT0FaIKKIpwrQuDx0oY&part=snippet&maxResults=10&order=date&type=video&videoDefinition=high";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText.toString());
    } else {
      print(response.body["items"]);
    }
  }
}
