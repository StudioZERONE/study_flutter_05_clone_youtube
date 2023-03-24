import 'package:study_flutter_05_clone_youtube/src/model/video.dart';

class YoutubeVideoResult {
  int totalResults;
  int resultsPerPage;
  String nextPagetoken;
  List<Video> items;

  YoutubeVideoResult({
    required this.totalResults,
    required this.resultsPerPage,
    required this.nextPagetoken,
    required this.items,
  });

  factory YoutubeVideoResult.fromJson(Map<String, dynamic> json) =>
      YoutubeVideoResult(
          totalResults: json["pageInfo"]["totlaResults"],
          resultsPerPage: json["pageInfo"]["resultsPerPage"],
          nextPagetoken: json["nextPagetoken"] ?? "",
          items: List<Video>.from(
              json["items"].map((data) => Video.fromJson(data))));
}
