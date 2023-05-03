import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_user_update/main.dart';
import 'package:getx_user_update/pages/profile_page.dart';

import '../controllers/user_controller.dart';

class FeedPage extends StatelessWidget {
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Get.to(ProfilePage());
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Feed Page"),
      ),
    );
  }
}
