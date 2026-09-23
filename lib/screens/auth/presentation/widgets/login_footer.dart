import 'package:flutter/material.dart';
import 'package:youth_basketball_mng/core/constants/app_text_style.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'MACCABI IRONI RAANANA BASKETBALL\nCLUB',
      textAlign: TextAlign.center,
      style: AppTextStyle.getBodyLargeInter(context),
    );
  }
}
