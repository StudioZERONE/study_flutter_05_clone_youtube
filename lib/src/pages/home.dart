import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/components/custom_appbar.dart';
import 'package:study_flutter_05_clone_youtube/src/components/video_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: CustomAppBar(),
            floating: true,
            snap: true,
            backgroundColor: Colors.white,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed("/detail/239587");
                  },
                  child: const VideoWidget(),
                );
              },
              //  => Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     height: 150,
              //     color: Colors.grey,
              //     child: const VideoWidget(),
              //   ),
              // ),
              childCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
