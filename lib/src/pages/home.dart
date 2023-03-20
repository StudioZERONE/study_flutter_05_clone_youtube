import 'package:flutter/material.dart';
import 'package:study_flutter_05_clone_youtube/src/components/custom_appbar.dart';

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
              (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  color: Colors.grey,
                ),
              ),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
