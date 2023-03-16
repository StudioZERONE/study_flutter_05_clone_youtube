import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/controller/app_controller.dart';
import 'package:study_flutter_05_clone_youtube/src/pages/explore.dart';
import 'package:study_flutter_05_clone_youtube/src/pages/home.dart';
import 'package:study_flutter_05_clone_youtube/src/pages/library.dart';
import 'package:study_flutter_05_clone_youtube/src/pages/subscribe.dart';

class App extends GetView<AppController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (RouteName.values[controller.currentIndex.value]) {
          case RouteName.Home:
            return const Home();
          case RouteName.Explore:
            return const Explore();
          case RouteName.Add:
            // Bottom Sheet
            break;
          case RouteName.Subscribe:
            return const Subscribe();
          case RouteName.Library:
            return const Library();
        }
        return Container();
      }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          onTap: controller.changePageIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/icons/home_off.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/icons/home_on.svg',
              ),
              label: "홈",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svg/icons/compass_off.svg',
                width: 22,
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/icons/compass_on.svg',
                width: 22,
              ),
              label: "탐색",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SvgPicture.asset(
                  "assets/svg/icons/plus.svg",
                  width: 35,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/icons/subs_off.svg",
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/icons/subs_on.svg",
              ),
              label: "구독",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/icons/library_off.svg",
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/icons/library_on.svg",
              ),
              label: "보관함",
            ),
          ],
        ),
      ),
    );
  }
}
