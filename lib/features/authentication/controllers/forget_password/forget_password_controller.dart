import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oxyshine/common/widgets/loaders/loaders.dart';
import 'package:oxyshine/data/repositories/authentication/authentication_repository.dart';
import 'package:oxyshine/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:oxyshine/utils/constants/image_strings.dart';
import 'package:oxyshine/utils/helpers/network_manager.dart';
import 'package:oxyshine/utils/popups/full_screen_loader.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  /// Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  /// Send reset password email
  sendPasswordResetEmail() async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
          'Processing your request...', TImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      // Remove the loader
      TFullScreenLoader.stopLoading();

      // show success screen
      TLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email Link Sent to Reset your Password.'.tr);

      // redirect
      Get.to(() => ResetPassword(email: email.text.trim()));
    } catch (e) {
      // Remove the loader
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      // start loading
      TFullScreenLoader.openLoadingDialog(
          'Processing your request...', TImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // send email to reset passwod
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email);

      // Remove the loader
      TFullScreenLoader.stopLoading();

      // show success screen
      TLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email Link has been send again to Reset your Password.'.tr);

    } catch (e) {
      // Remove the loader
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
