import 'package:get/get.dart';

class UserModel {
  String name;
  String email;

  UserModel({required this.name, required this.email});
}

class UserController extends GetxController {
  var user = UserModel(
    name: "John Doe",
    email: "john.doe@example.com",
  ).obs;

  void updateUser(String newName, String newEmail) {
    user.update((val) {
      val!.name = newName;
      val.email = newEmail;
    });
  }
}
