import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({super.key});

  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "개발하는 남자 유튜브 영상 다시보기",
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              Text(
                "조회수 1,000회",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              const Text(" / "),
              Text(
                "2023-03-22",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _descriptionZone() {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: Text(
        "안녕하세요, 개발하는 남자 유튜브입니다.",
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  Widget _buttonOne(String iconPath, String text) {
    return Column(
      children: [
        SvgPicture.asset("assets/svg/icons/$iconPath.svg"),
        Text(text),
      ],
    );
  }

  Widget _bottomZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonOne(
          "like",
          "1,000",
        ),
        _buttonOne(
          "dislike",
          "0",
        ),
        _buttonOne(
          "share",
          "공유",
        ),
        _buttonOne(
          "save",
          "저장",
        ),
      ],
    );
  }

  Widget _ownerZone() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "개발하는 남자",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "구독자 10,000",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: const Text(
              "구독",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget get line => Container(
        height: 1,
        color: Colors.black.withOpacity(0.1),
      );
  Widget _description() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _titleZone(),
          line,
          _descriptionZone(),
          _bottomZone(),
          const SizedBox(
            height: 20,
          ),
          line,
          _ownerZone(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.grey.withOpacity(0.5),
          ),
          Expanded(child: _description())
        ],
      ),
    );
    // return Center(
    //   child: Text(Get.parameters["videoId"].toString()),
    // );
  }
}

// 내 Google API Key: .... 아.. 이건 여기다 쓰면 안 되지..
// 아무튼 API Key를 받았고
// YouTube Data API v3 으로 쿼리 날려봤음. Postman 이용
// 데이터 잘 나옴
// 만든 API URL은..
// Search Channel
// Search Video
// Search Video Info
// 이걸로 코드에 적용하면 화면 연결 될 듯..
