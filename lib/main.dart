import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_05_clone_youtube/src/binding/init_binding.dart';
import 'package:study_flutter_05_clone_youtube/src/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Youtube Clone App",
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const App()),
      ],
    );
  }
}
