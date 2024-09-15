import 'package:oxyshine/common/styles/spacing_style.dart';
import 'package:oxyshine/common/widgets/login_signup/form_divider.dart';
import 'package:oxyshine/common/widgets/login_signup/social_buttons.dart';
import 'package:oxyshine/features/authentication/screens/login/widgets/login_form.dart';
import 'package:oxyshine/features/authentication/screens/login/widgets/login_header.dart';
import 'package:oxyshine/utils/constants/sizes.dart';
import 'package:oxyshine/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// login title and subtitle
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              ///Footer
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
