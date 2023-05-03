import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class EditProfilePage extends StatelessWidget {
  final UserController userController = Get.find();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = userController.user.value.name;
    emailController.text = userController.user.value.email;

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
                    "Edit Profile",
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                userController.updateUser(
                  nameController.text,
                  emailController.text,
                );
                Get.back();
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
