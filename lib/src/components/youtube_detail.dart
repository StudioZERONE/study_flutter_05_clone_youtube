import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(Get.parameters["videoId"].toString()),
    );
  }
}
