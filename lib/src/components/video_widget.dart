import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:study_flutter_05_clone_youtube/src/model/video.dart';

class VideoWidget extends StatelessWidget {
  final Video video;
  const VideoWidget({super.key, required this.video});

  Widget _thumbnail() {
    return Container(
      height: 250,
      color: Colors.grey.withOpacity(0.5),
      child: Image.network(
        video.snippet.thumbnails.medium.url,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _simpleDetailinfo() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        bottom: 20,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: Image.network(
                    "https://yt3.ggpht.com/CRfIeldfkRMlZQDIFjl9JOiO0vfbaoAcozOXhxOWSupfmajfSMBBEcs3_2axkGeaiToUt-Ry=s48-c-k-c0x00ffffff-no-rj")
                .image,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      video.snippet.title,
                      maxLines: 2,
                    ),
                  ),
                  IconButton(
                    alignment: Alignment.topCenter,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      size: 18,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    video.snippet.channelTitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                  const Text(" / "),
                  Text(
                    "조회수 1,000회",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  const Text(" / "),
                  Text(
                    DateFormat("yyyy-MM-dd").format(video.snippet.publishTime),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _thumbnail(),
        _simpleDetailinfo(),
      ],
    );
  }
}
