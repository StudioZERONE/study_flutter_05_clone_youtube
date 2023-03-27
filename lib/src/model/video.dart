// --------------------------------------------------------------
// https://app.quicktype.io/
// Youtube에서 반환된 JSON 중, 영상 하나에 대한 내용을 위 사이트에 넣어주고
// 좌측 입력창에서 Name을 Video, Source Type을 JSON으로 설정
// 우측 출력 창에 Language를 Dart로 설정하고 옵션은 Null Safety만 Enable로 설정
// 하고 돌리면 아래 코드를 자동으로 만들어 줌
// --------------------------------------------------------------
// 아래 코드를 실제 만들 때 입력한, Youtube에서 반환된 JSON
// --------------------------------------------------------------
// {
//   "kind": "youtube#searchResult",
//   "etag": "TJTSTM7NzL8IeTxelxPuxCQXmZs",
//   "id": {
//       "kind": "youtube#video",
//       "videoId": "mzqpQ0sdmoM"
//   },
//   "snippet": {
//       "publishedAt": "2023-03-24T00:26:29Z",
//       "channelId": "UChlgI3UHCOnwUGzWzbJ3H5w",
//       "title": "[한방이슈] &#39;간베이&#39; 외친 푸틴.. 중·러 초유의 사태 / YTN",
//       "description": "00:00 벼랑 끝 푸틴, 시진핑의 방러..역대급 환대의 이유 00:57 '지각대장' 푸틴이 달라졌어요 01:23 시진핑의 화답 \"내년 러 대선, 푸틴 ...",
//       "thumbnails": {
//           "default": {
//               "url": "https://i.ytimg.com/vi/mzqpQ0sdmoM/default.jpg",
//               "width": 120,
//               "height": 90
//           },
//           "medium": {
//               "url": "https://i.ytimg.com/vi/mzqpQ0sdmoM/mqdefault.jpg",
//               "width": 320,
//               "height": 180
//           },
//           "high": {
//               "url": "https://i.ytimg.com/vi/mzqpQ0sdmoM/hqdefault.jpg",
//               "width": 480,
//               "height": 360
//           }
//       },
//       "channelTitle": " YTN",
//       "liveBroadcastContent": "none",
//       "publishTime": "2023-03-24T00:26:29Z"
//   }
// }
// --------------------------------------------------------------

// To parse this JSON data, do
//
//     final video = videoFromJson(jsonString);

import 'dart:convert';

Video videoFromJson(String str) => Video.fromJson(json.decode(str));

String videoToJson(Video data) => json.encode(data.toJson());

class Video {
  Video({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
  });

  String kind;
  String etag;
  Id id;
  Snippet snippet;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        kind: json["kind"],
        etag: json["etag"],
        id: Id.fromJson(json["id"]),
        snippet: Snippet.fromJson(json["snippet"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "etag": etag,
        "id": id.toJson(),
        "snippet": snippet.toJson(),
      };
}

class Id {
  Id({
    required this.kind,
    required this.videoId,
  });

  String kind;
  String videoId;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        kind: json["kind"],
        videoId: json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "videoId": videoId,
      };
}

class Snippet {
  Snippet({
    required this.publishedAt,
    required this.channelId,
    required this.title,
    required this.description,
    required this.thumbnails,
    required this.channelTitle,
    required this.liveBroadcastContent,
    required this.publishTime,
  });

  DateTime publishedAt;
  String channelId;
  String title;
  String description;
  Thumbnails thumbnails;
  String channelTitle;
  String liveBroadcastContent;
  DateTime publishTime;

  factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
        publishedAt: DateTime.parse(json["publishedAt"]),
        channelId: json["channelId"],
        title: json["title"],
        description: json["description"],
        thumbnails: Thumbnails.fromJson(json["thumbnails"]),
        channelTitle: json["channelTitle"],
        liveBroadcastContent: json["liveBroadcastContent"],
        publishTime: DateTime.parse(json["publishTime"]),
      );

  Map<String, dynamic> toJson() => {
        "publishedAt": publishedAt.toIso8601String(),
        "channelId": channelId,
        "title": title,
        "description": description,
        "thumbnails": thumbnails.toJson(),
        "channelTitle": channelTitle,
        "liveBroadcastContent": liveBroadcastContent,
        "publishTime": publishTime.toIso8601String(),
      };
}

class Thumbnails {
  Thumbnails({
    required this.thumbnailsDefault,
    required this.medium,
    required this.high,
  });

  Default thumbnailsDefault;
  Default medium;
  Default high;

  factory Thumbnails.fromJson(Map<String, dynamic> json) => Thumbnails(
        thumbnailsDefault: Default.fromJson(json["default"]),
        medium: Default.fromJson(json["medium"]),
        high: Default.fromJson(json["high"]),
      );

  Map<String, dynamic> toJson() => {
        "default": thumbnailsDefault.toJson(),
        "medium": medium.toJson(),
        "high": high.toJson(),
      };
}

class Default {
  Default({
    required this.url,
    required this.width,
    required this.height,
  });

  String url;
  int width;
  int height;

  factory Default.fromJson(Map<String, dynamic> json) => Default(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
      };
}
