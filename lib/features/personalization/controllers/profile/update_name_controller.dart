import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oxyshine/common/widgets/loaders/loaders.dart';
import 'package:oxyshine/data/repositories/user/user_repository.dart';
import 'package:oxyshine/features/personalization/controllers/user_controller.dart';
import 'package:oxyshine/features/personalization/screens/profile/profile.dart';
import 'package:oxyshine/utils/constants/image_strings.dart';
import 'package:oxyshine/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:oxyshine/utils/helpers/network_manager.dart';
import 'package:oxyshine/utils/popups/full_screen_loader.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  /// init user data when Home Screen appears
  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  /// Fetch user record
  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserNames() async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
          'We are Updating your Information...', TImages.docerAnimation);

      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Update user's first and last name in the firebase
      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim()
      };
      await userRepository.updateSingleField(name);

      // Update the Rx User value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      //remove loader
      TFullScreenLoader.stopLoading();

      // show success message
      TLoaders.successSnackBar(
          title: 'Congratulations', message: 'Your Name has been updated.');

      // move to previous screen
      Get.off(() => const ProfileScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
