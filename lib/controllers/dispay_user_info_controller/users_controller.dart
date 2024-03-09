import 'package:aellpr/configurations/firebase/cloud_firestore/cloud_firestore.dart';
import 'package:aellpr/models/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  //-- variable
  Rx<UserModel> user = UserModel.emptyUser().obs;
  final controller = Get.put(UserCloudDatabase());
  final profileLoading = false.obs;

  //-- initial
  @override
  void onInit() {
    super.onInit();
    fetchUserData();
  }

  //-- Function to fetch user data
  Future<void> fetchUserData() async {
    try {
      profileLoading.value = true;
      final user = await controller.fetchUsersData();
      this.user(user);
    } catch (e) {
      user(UserModel.emptyUser());
    } finally {
      profileLoading.value = false;
    }
  }

  //-- Dispose
  @override
  void onClose() {
    super.onClose();
    fetchUserData();
  }
}
