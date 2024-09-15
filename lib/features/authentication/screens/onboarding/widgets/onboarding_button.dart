import 'package:oxyshine/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:oxyshine/utils/constants/sizes.dart';
import 'package:oxyshine/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        child: const Text('skip'),
        onPressed: () => OnBoardingController.instance.skipPage(),
      ),
    );
  }
}
