import 'package:oxyshine/common/widgets/login_signup/form_divider.dart';
import 'package:oxyshine/common/widgets/login_signup/social_buttons.dart';
import 'package:oxyshine/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:oxyshine/utils/constants/sizes.dart';
import 'package:oxyshine/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title...
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Form...
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// social buttons
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
