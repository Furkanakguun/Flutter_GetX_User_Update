import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/user_controller.dart';
import 'pages/feed.dart';
import 'pages/profile_page.dart';
import 'pages/edit_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FeedPage(),
      getPages: [
        GetPage(name: "/feed", page: () => FeedPage()),
        GetPage(name: "/profile", page: () => ProfilePage()),
        GetPage(name: "/edit-profile", page: () => EditProfilePage()),
      ],
    );
  }
}
