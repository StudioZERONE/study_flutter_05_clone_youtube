import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App.dart"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        onTap: (index) {
          //print(index);
        },
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
    );
  }
}
