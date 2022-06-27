import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../styles/app_text_styles.dart';

class AppDisclaimer extends StatelessWidget {
  const AppDisclaimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          const TextSpan(
              text: "By tapping Create Account or Sign In, you agree to our "),
          TextSpan(
            text: "Terms",
            style: AppTextStyles.boldUnderlined,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: ". Learn how we process your data in our "),
          TextSpan(
            text: "Privacy Policy",
            style: AppTextStyles.boldUnderlined,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: " and "),
          TextSpan(
            text: "Cookies Policy",
            style: AppTextStyles.boldUnderlined,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: "."),
        ],
      ),
    );
  }
}
