import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class ProfilePage extends StatelessWidget {
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    ever(userController.user, (_) {
      // update the email value in the UI when the user data changes
      Get.forceAppUpdate();
    });

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Navigation Bar
            Container(
              height: 56,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 50),
                ],
              ),
            ),
            SizedBox(height: 50),
            Obx(() => Text(
                  "Name: ${userController.user.value.name}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 20),
            Obx(() => Text(
                  "Email: ${userController.user.value.email}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/edit-profile");
              },
              child: Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
