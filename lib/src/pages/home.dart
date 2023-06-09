import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/components/custom_appbar.dart';
import 'package:study_flutter_05_clone_youtube/src/components/video_widget.dart';
import 'package:study_flutter_05_clone_youtube/src/controller/home_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => CustomScrollView(
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
                    child: VideoWidget(
                      video: controller.youtubeResult.value.items[index],
                    ),
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
                childCount: controller.youtubeResult.value.items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
